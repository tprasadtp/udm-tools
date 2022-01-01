---
layout: default
navorder: 4
permalink: /services
title: Services
---

# Services

Following systemd units are installed and enabed by default.
You can mask them if required.

## `udm-tools-boot-hooks`

Runs boot time hooks. See [hooks](./hooks.md) for more info.

## `udm-tools-container-hooks`

these hooks are executed **AFTER**  **ALL** boot hooks are **SUCCESSFULLY** executed. See [hooks](./hooks.md) for more info.

## `udm-tools-install`

Ensures that few tools like `hookctl`, and `udmctl` are available from host machine.

## `udm-tools-install-prompt`

Ensures a fancier and more merry shell prompt. This also adds ensures tools installed by `udm-tools-install` is available via PATH. You can mask this unit without affecting any other functions.

- UDM
<pre><font color="#FB4934">[UDM] </font><font color="#B8BB26">root</font>@<font color="#FABD2F">cynthia</font> in <font color="#458588">~</font>
→
</pre>

- UDM Podman
<pre><font color="#B16286">[UDM-PODMAN] </font><font color="#B8BB26">root</font>@<font color="#FABD2F">cynthia</font> in <font color="#458588">/</font>
→ </pre>

## `udm-tools-sshkeys`

- Syncs ssh keys from UniFi Network settings. This directly reads keys from mongodb.
- There exists a race condition where mongodb might not be up, so the script retires every 5 seconds for 60 times.
- Should you prefer to use custom hooks do it for you, you can mask this unit without affecting any other functions.

## `udm-tools-install-cni`

Similar to install unit, but installs bundled [cni plugins](https://github.com/containernetworking/plugins/releases) on the host.
CNI Plugins are bundled with the package. They are downloaded during build time.
