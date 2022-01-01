---
layout: default
navorder: 2
permalink: /install
title: Install
---

[Download Latest](https://github.com/tprasadtp/udm-tools/releases/latest/download/udm-tools.deb){: .btn .btn-green .mr-4 }

## Installing via SSH

- SSH into UDM
- Login to unifi-os via `unifi-shell` (If you already have older version of this package installed run `udmctl shell`)
- Download latest `udm-tools` package from releases
    ```sh
    curl -o /tmp/udm-tools.deb -L https://github.com/tprasadtp/udm-tools/releases/latest/download/udm-tools.deb
    ```
- Install `udm-tools` package
    ```sh
    dpkg -i /tmp/udm-tools.deb
    ```
- Ensure systemd units are enabled and running
    ```sh
    udmctl check-services
    ```
- Install your boot hooks via `hookctl boot install <hook-file|url> <installed-hook-name>`
- Install your container hooks via `hookctl boot install <hook-file|url> <installed-hook-name>`
- Remove deb file
    ```sh
    rm -f /tmp/udm-tools.deb
    ```
- You can manually invoke individual hooks via `hookctl boot invoke start my-hook` or  `hookctl container invoke start my-hook`. They are automatically invoked reboot & firmware upgrades!

- You can manually invoke all hooks via `hookctl boot invoke-all start` or  `hookctl container invoke-all start`. They are automatically invoked reboot & firmware upgrades!
