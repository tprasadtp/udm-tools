---
layout: default
permalink: /dns-watchdog
title: DNS Watchdog
---

# DNS Watchdog

DNS watchdog watches over your custom DNS server(s), and if more than N healthchecks fail, it reconfigures your Unifi site settings to fallback-preset option specified.

- Healthchecks are done via systemd unit `udm-dns-watchdog.service`.
- Configuration can be supplied via json file in `/data/udm-dns-watchdog/config.json` or via CLI arguments.
- Reload is not implemented. Only restart is supported.
- Please note that if you change your DNS settings manually from UI your DNS settings **WILL** be overwritten automatically!


## Fallback presets

| Name | DNS Servers |
|---|---
| google | 8.8.8.8, 8.4.4.4
| cloudflare | 1.1.1.1, 1.0.0.1
| cloudflare-protect | 1.1.1.2, 1.0.0.2
| cloudflare-family (default)  | 1.1.1.3, 1.0.0.3

## Install

- SSH into UDM
- Login to unifi-os via `unifi-shell` (If you already have `udm-tools` installed, you can run `udmctl s`)
- Download latest `dns-watchdog` package from releases
    ```sh
    curl -o /tmp/udm-dns-watchdog.deb -L https://github.com/tprasadtp/udm-tools/releases/latest/download/udm-dns-watchdog.deb
    ```
- Ensure local access is enabled and set a local user password.
- Declare your Unifi credentials
    ```sh
    set +o history
    UNIFI_API_USER="replace-with-local-username"
    UNIFI_API_PASSWORD="replace-with-local-password-cloud-access-password-wont-work"
    set -o history
    ```
- Create credentials file
    ```sh
    mkdir -p /data/udm-dns-watchdog/
    printf "UNIFI_API_USER=$UNIFI_API_USER\nUNIFI_API_PASSWORD=$UNIFI_API_PASSWORD" > /data/udm-dns-watchdog/credentials.env
    # Protect credentials file!
    chmod 600 /data/udm-dns-watchdog/credentials.env
    ```

- Create config file `/data/udm-dns-watchdog/config`. See configuration for more info.
- Install `udm-dns-watchdog.deb` package
    ```sh
    dpkg -i /tmp/udm-dns-watchdog.deb
    ```
- Remove deb file
    ```sh
    rm -f /tmp/udm-tools.deb
    ```

## Disable

You can disable this unit by removing or moving the config or credentials file.
You can also use `systemctl` to mask units, but on firmware upgrades systemd presets might be lost.

## Uninstall

You can simply uninstall the package `udm-dns-watchdog`. Pre-remove scripts should stop the service before removing it to avoid broken DNS config


## Configuration

Configuraition **MUST** be a valid ini file. Configuration is located at
`data/udm-dns-watchdog/config`.

``` ini
#diana::dynamic:dns-watchdog-sample-config:begin#
[api]
# Config API version. Only version 1 is supported at the moment.
# This **MUST** be specified
version = 1

# Unifi Controller config
[unifi]

# Hostname or IP address of unifi controller
# Defaults to localhost if not specified
host = localhost

# TLS Port for unifi controller.
# Defaults to 443 if not specified
port = 443

# UniFi uses self signed certificates by default.
# Thus this flag is required to trust those certificates.
# If you are using certificates trusted by system certificate store (say letsencrypt), feel free to set this to true or simply omit it.
# If not specified, defaults to false.
insecure = true

# UniFi local user credentials
# This must be local user, cloud access is not supported.
# If not specified, environment variables
# - `UNIFI_API_USER` and
# - `UNIFI_API_PASSWORD` will be used instead
# If using systemd, leave this unconfigured and use
# /data/udm-dns-watchdog/credentials.env instead
# username = replace-me-with-local-username
# password = replace-me-with-local-password

[dns]
# comma seperated list of IP addresses of DNS servers.
# - Maximum of 4 IPv4 and 4 IPv6 addresses are allowed. (total of 8).
# - IP addresses **MUST** be valid addresses
# - IP addresses **MUST NOT BE** loopback or muticast addresses.
# - IP addresses cannot be same as fallback pairs.
servers = 10.22.22.5

# Name of the fallback preset
# Defaults to cloudflare-family if not specified.
fallback = cloudflare-family
#diana::dynamic:dns-watchdog-sample-config:end#
```
