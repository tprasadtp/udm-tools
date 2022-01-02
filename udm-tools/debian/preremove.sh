#!/bin/bash
# postinst script for udm-tools
set -e

# Validate arguments
case "$1" in
purge | remove | upgrade | failed-upgrade | abort-install | abort-upgrade | disappear)
    :
    ;;
*)
    echo "prerem called with unknown argument $1" >&2
    exit 1
    ;;
esac

# There exists a race condition in some edge cases,
# do not change order of services!!
SERVICES=("udm-tools-install.service"
    "udm-tools-install-prompt.service"
    "udm-tools-sshkeys.service"
    "udm-tools-boot-hooks.service"
    "udm-tools-install-cni.service"
    "udm-tools-container-settings.service"
    "udm-tools-container-hooks.service")

if [ -d /run/systemd/system ] && [ "$1" = remove ]; then
    deb-systemd-invoke stop "${SERVICES[@]}" >/dev/null || true
fi

exit 0
