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
    | $2 | Hook Type   | Type of the Hook `boot`, `container` or `cni`.Please note that `cni` hooks are not supported yet.
- They are executed by systemd unit inside `unifi-os`
- They are executed in the context of host **NOT** the podman container.
- Hooks are executed in lexographical order
- Hook failure **is** considered as unit failure
- Hooks **MUST** be executable files
- Hooks **MUST** use host only software/tools. Any additional tools
**MUST** be downloaded and installed by previous hooks.
- Hooks **SHOULD NOT** use bash or python binaries **MUST** be sh(ash) or self contained/static.

## Hook Installation directory

- Boot hooks **MUST** be installed to `/mnt/data/udm-boot-hooks.d`
- Container Hooks **MUST** be installed to `/mnt/data/udm-container-hooks.d`
- If you are using `hookctl` to manage your hooks, permissions and install locations are automatically selected.

## Incompatibility with `on_boot.d`

- Because Hooks **MUST** be lifecycle aware,
<a href="https://github.com/boostchicken-dev/udm-utilities" rel="noreferrer">on_boot.d</a>
hooks are _incompatible_ udm-tools.
- Though its fairly easy to modify them to be compatible.

## Hook Template

Basic hook template can be found [here](./examples/template.sh).
Its licensed under MIT license.
