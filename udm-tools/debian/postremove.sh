#!/bin/bash
# postinst script for udm-tools
set -e

# summary of how this script can be called:
#        * <postrm> `remove'
#        * <postrm> `purge'
#        * <old-postrm> `upgrade' <new-version>
#        * <new-postrm> `failed-upgrade' <old-version>
#        * <new-postrm> `abort-install'
#        * <new-postrm> `abort-install' <old-version>
#        * <new-postrm> `abort-upgrade' <old-version>
#        * <disappearer's-postrm> `disappear' <overwriter>
#          <overwriter-version>
# for details, see https://www.debian.org/doc/debian-policy/ or
# the debian-policy package

case "$1" in
purge | remove | upgrade | failed-upgrade | abort-install | abort-upgrade | disappear)
    :
    ;;
*)
    echo "postrm called with unknown argument \`$1'" >&2
    exit 1
    ;;
esac

# There exists a race condition in some edge cases,
# do not change order of services!!
SERVICES=("udm-tools-install.service" \
    "udm-tools-install-prompt.service" \
    "udm-tools-sshkeys.service" \
    "udm-tools-boot-hooks.service" \
    "udm-tools-install-cni.service" \
    "udm-tools-container-settings.service" \
    "udm-tools-container-hooks.service")

if [ -d /run/systemd/system ] && [ "$1" = remove ]; then
    systemctl --system daemon-reload >/dev/null || true
fi

if [ "$1" = "remove" ]; then
    if [ -x "/usr/bin/deb-systemd-helper" ]; then
        deb-systemd-helper mask "${SERVICES[@]}" >/dev/null || true
    fi
fi

if [ "$1" = "purge" ]; then
    if [ -x "/usr/bin/deb-systemd-helper" ]; then
        deb-systemd-helper purge "${SERVICES[@]}" >/dev/null || true
        deb-systemd-helper unmask "${SERVICES[@]}" >/dev/null || true
    fi
fi
