---
layout: default
navorder: 3
permalink: /tools
title: Tools
---

# Tools

## `hookctl`

## Boot Hooks

- boot hooks are standard hooks(as defined in [hooks](./hooks.md)),
these are executed at S95 boot stage via unifi-os container.
- The service responsible for running boot hooks is `udm-tools-boot-hooks`

<!--diana::dynamic:hookctl-boot-help:begin-->
<pre>
UDM boot Hooks Manager

Usage: hookctl [GLOBAL-OPTIONS] boot ACTION [HOOK]

Arguments:
    ls [status]           List all the hooks
    rm [HOOK]             Remove boot hook
    install [FILE]        Install boot hook
    disable [HOOK]        Disable boot hook
    enable  [HOOK]        Enable boot hook
    invoke start [HOOK]   Invoke start on single hook
    invoke stop  [HOOK]   Invoke stop  on single hook
    invoke-all start      Invoke start on all hooks
    invoke-all stop       Invoke stop  on all hooks

Global Options:
  -h, --help          Display this help message

Examples:
  hookctl --help
  hookctl boot ls installed
  hookctl boot ls enabled
  hookctl boot ls disabled
  hookctl boot ls all

  hookctl boot install /tmp/my-hook
  hookctl boot enable my-hook
  hookctl boot disable /mnt/data/udm-boot-hooks.d/my-hook

  hookctl boot invoke start my-hook
  hookctl boot invoke stop /mnt/data/udm-boot-hooks.d/my-hook

  hookctl boot invoke-all start
  hookctl boot invoke-all stop

Environment:
  LOG_TO_STDOUT       Set this to 'true' to log to stdout.
  NO_COLOR            Set this to NON-EMPTY to disable all colors.
  CLICOLOR_FORCE      Set this to NON-ZERO to force colored output.
</pre>
<!--diana::dynamic:hookctl-boot-help:end-->

## Container hooks

- container hooks are standard hooks (as defined in [hooks](./hooks.md)),
these are executed at after boot hooks
- The service responsible for running container hooks is `udm-tools-container-hooks`
- They are mostly identical to boot hooks, but These are only executed after CNIs and and `boot-hooks` are succesfully executed. If **ANY**
boot hooks fail (i.e return with non-zero exit code), **NONE** of the container hooks will be executed.


<!--diana::dynamic:hookctl-container-help:begin-->
<pre>
UDM container Hooks Manager

Usage: hookctl [GLOBAL-OPTIONS] container ACTION [HOOK]

Arguments:
    ls [status]           List all the hooks
    rm [HOOK]             Remove container hook
    install [FILE]        Install container hook
    disable [HOOK]        Disable container hook
    enable  [HOOK]        Enable container hook
    invoke start [HOOK]   Invoke start on single hook
    invoke stop  [HOOK]   Invoke stop  on single hook
    invoke-all start      Invoke start on all hooks
    invoke-all stop       Invoke stop  on all hooks

Global Options:
  -h, --help          Display this help message

Examples:
  hookctl --help
  hookctl container ls installed
  hookctl container ls enabled
  hookctl container ls disabled
  hookctl container ls all

  hookctl container install /tmp/my-hook
  hookctl container enable my-hook
  hookctl container disable /mnt/data/udm-container-hooks.d/my-hook

  hookctl container invoke start my-hook
  hookctl container invoke stop /mnt/data/udm-container-hooks.d/my-hook

  hookctl container invoke-all start
  hookctl container invoke-all stop

Environment:
  LOG_TO_STDOUT       Set this to 'true' to log to stdout.
  NO_COLOR            Set this to NON-EMPTY to disable all colors.
  CLICOLOR_FORCE      Set this to NON-ZERO to force colored output.
</pre>
<!--diana::dynamic:hookctl-container-help:end-->


## `udmctl`
Wrapper for various UDM Tools

## UniFi Analytics manager

<!--diana::dynamic:udmctl-analytics-help:begin-->
<pre>
UDM Tools Analytics Manager

Usage: udmctl [GLOBAL-OPTIONS] analytics ACTION [HOOK]

Commands:
    disable           Disables anonymous analytics (Experimental)
    help              Display this help message

Options:
  -h, --help          Display this help message

Global Options:
  -h, --help          Display this help message

Examples:
  udmctl analytics help
  udmctl analytics disable

Environment:
  LOG_TO_STDOUT       Set this to 'true' to log to stdout.
  NO_COLOR            Set this to NON-EMPTY to disable all colors.
  CLICOLOR_FORCE      Set this to NON-ZERO to force colored output.
</pre>
<!--diana::dynamic:udmctl-analytics-help:end-->

## Sync SSH Keys from UniFi Controller

- syncs ssh keys from UniFi controller settings.
- This is also invoked by oneshot service unit `udm-tools-sshkeys.service`

<!--diana::dynamic:udmctl-sync-ssh-keys-help:begin-->
<pre>
Sync SSH Keys from UniFi network settings

Usage: udmctl [GLOBAL-OPTIONS] sync-ssh-keys

Commands:
    help              Display this help message

Options:
  -h, --help          Display this help message

Global Options:
  -h, --help          Display this help message

Examples:
  udmctl sync-ssh-keys
  udmctl sync-ssh-keys help

Environment:
  LOG_TO_STDOUT       Set this to 'true' to log to stdout.
  NO_COLOR            Set this to NON-EMPTY to disable all colors.
  CLICOLOR_FORCE      Set this to NON-ZERO to force colored output.
</pre>
<!--diana::dynamic:udmctl-sync-ssh-keys-help:end-->

## UniFi OS Shell

- Drops you into unifi-os container. This is similar to `unifi-os shell`
- If prompt (PS1) is setup by `udm-tools-install-prompt.service`,
it will also be used within unifi-os container.

<!--diana::dynamic:udmctl-shell-help:begin-->
<pre>
Drops into bash shell inside UniFi OS

Usage: udmctl shell [OPTIONS]

Arguments:
    None

Global Options:
  -h, --help          Display this help message

Examples:
  udmctl shell
  udmctl shell --help

Environment:
  LOG_TO_STDOUT       Set this to 'true' to log to stdout.
  NO_COLOR            Set this to NON-EMPTY to disable all colors.
  CLICOLOR_FORCE      Set this to NON-ZERO to force colored output.
</pre>
<!--diana::dynamic:udmctl-shell-help:end-->
