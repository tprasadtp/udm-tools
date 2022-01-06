---
layout: default
navorder: 3
permalink: /tools
title: Tools
---

## hookctl

- Boot hooks are hooks(as defined in [hooks](./hooks.md)),
these are executed at S95 boot stage.
- The service responsible for running boot hooks is `udm-tools-boot-hooks`

<!--diana::dynamic:hookctl-help:begin-->
<pre>
UDM Hooks Manager

Usage: hookctl [OPTIONS] ACTION [HOOK]

Commands:
    ls [state]            List all the hooks
    rm [HOOK]             Remove hook
    install [FILE]        Install hook
    disable [HOOK]        Disable hook
    enable  [HOOK]        Enable hook

    invoke-start [HOOK]   Invoke start   on single hook
    invoke-stop  [HOOK]   Invoke stop    on single hook
    invoke-reload  [HOOK] Invoke reload  on single hook
    invoke-restart [HOOK] Invoke restart on single hook

    invoke-all start      Invoke start   on all hooks
    invoke-all stop       Invoke stop    on all hooks
    invoke-all reload     Invoke reload  on all hooks
    invoke-all restart    Invoke restart on all hooks
    help                  Display this help message

Global Options:
  -h, --help              Display this help message

Examples:
  hookctl help
  hookctl ls installed
  hookctl ls enabled
  hookctl ls disabled
  hookctl ls all

  hookctl install /tmp/my-hook
  hookctl enable my-hook
  hookctl disable /mnt/data/udm-boot-hooks.d/my-hook

  hookctl invoke start my-hook
  hookctl invoke stop /mnt/data/udm-boot-hooks.d/my-hook

  hookctl invoke-all start
  hookctl invoke-all stop

Environment:
  LOG_TO_STDOUT       Set this to 'true' to log to stdout.
  NO_COLOR            Set this to NON-EMPTY to disable all colors.
  CLICOLOR_FORCE      Set this to NON-ZERO to force colored output.
</pre>
<!--diana::dynamic:hookctl-help:end-->


## udmctl

Wrapper for various UDM Tools

- `sync-ssh-keys` syncs ssh keys from UniFi controller settings.
This is also invoked by oneshot service unit `udm-tools-sshkeys.service`
- `libpod-settings` configures libpod/podman settings like max log size etc. This is also invoked by oneshot service unit `udm-tools-libpod-config.service`
- `shell` Drops you into unifi-os container. This is similar to `unifi-os shell`. If prompt (PS1) is setup by `udm-tools-install-prompt.service`,
it will also be used within unifi-os container.

<!--diana::dynamic:udmctl-help:begin-->
<pre>
Wrapper for various UDM Tools

Usage: udmctl [GLOBAL-OPTIONS] COMMAND [OPTIONS] ARGS...

Commands:
    check-services    Checks all bundled services are active
    disable-analytics Configure anonymous Analytics (Experimental)
    libpod-settings   Set libpod, podman settings like log size etc.
    ssh               SSH into host and run commands specified
    sync-ssh-keys     Syncs ssh keys from UniFi network settings
    shell             Drop in to Unifi OS Shell

Global Options:
  -h, --help          Display this help message

Examples:
  udmctl --help                 Display help
  udmctl ssh ubnt-tools hwaddr  Get Hardware address via ssh


Environment:
  LOG_TO_STDOUT       Set this to 'true' to log to stdout.
  NO_COLOR            Set this to NON-EMPTY to disable all colors.
  CLICOLOR_FORCE      Set this to NON-ZERO to force colored output.
</pre>
<!--diana::dynamic:udmctl-help:end-->
