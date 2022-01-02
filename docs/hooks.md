---
layout: default
navorder: 5
permalink: /hooks
title: Hooks
---

# Hooks

- Hooks are exectables placed on the UDM
- Hooks **MUST** be lifecycle aware. Each hook is provided following arguments.

    | Environment/Argument | Type | Description
    |---|---|---
    | $1 | Invoke Type | Can be one of `start`, `stop` or `restart`. Please note that `restart` is not supported via `hookctl` yet.
- They are executed by systemd unit inside `unifi-os`
- Hooks are executed in lexographical order
- Hook failure **is** considered as unit failure
- Hooks **MUST** be executable files

## Hook Installation directory & Context

- Boot hooks **MUST** be installed to `/mnt/data/udm-boot-hooks.d`
and thy are exeuted in the context of **host** not `unifi-os` podman container.
- If you are using `hookctl` to manage your hooks, permissions and install locations are automatically selected.

## Incompatibility with `on_boot.d`

- Because Hooks **MUST** be lifecycle aware,
<a href="https://github.com/boostchicken-dev/udm-utilities" rel="noreferrer">on_boot.d </a>
hooks are _incompatible_ udm-tools.
- Though its fairly easy to modify them to be compatible.

## Differences

- Many common hooks like
    - CNI installer
    - SSH keys from Unifi settings
    - Shell Prompt
    - Podman configuration tweaks
are already implemented as systemd units.
- Hook management tools are included and make it simple to install/enable and disable hooks.
