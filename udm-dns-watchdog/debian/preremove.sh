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

SERVICES=("udm-dns-watchdog.service")

if [ -d /run/systemd/system ] && [ "$1" = remove ]; then
    deb-systemd-invoke stop "${SERVICES[@]}" >/dev/null || true
fi

exit 0
