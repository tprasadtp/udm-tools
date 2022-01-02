#!/bin/bash
# postinst script for udm-tools
set -e

# Validate arguments
case "$1" in
configure | abort-upgrade | abort-remove | abort-deconfigure) ;;
*)
    echo "postinst called with unknown argument \`$1'" >&2
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

# Enable services automagically
if [ "$1" = "configure" ] || [ "$1" = "abort-upgrade" ] || [ "$1" = "abort-deconfigure" ] || [ "$1" = "abort-remove" ]; then
    for service in "${SERVICES[@]}"; do
        # This will only remove masks created by d-s-h on package removal.
        deb-systemd-helper unmask "$service" >/dev/null || true

        # was-enabled defaults to true, so new installations run enable.
        if deb-systemd-helper --quiet was-enabled "$service"; then
            # Enables the unit on first installation, creates new
            # symlinks on upgrades if the unit file has changed.
            deb-systemd-helper enable "$service" >/dev/null || true
        else
            # Update the statefile to add new symlinks (if any), which need to be
            # cleaned up on purge. Also remove old symlinks.
            deb-systemd-helper update-state "$service" >/dev/null || true
        fi
    done
fi

# Run services automagically
if [ "$1" = "configure" ] || [ "$1" = "abort-upgrade" ] || [ "$1" = "abort-deconfigure" ] || [ "$1" = "abort-remove" ]; then
    if [ -d /run/systemd/system ]; then
        systemctl --system daemon-reload >/dev/null || true
        if [ -n "$2" ]; then
            _dh_action=restart
        else
            _dh_action=start
        fi
        deb-systemd-invoke $_dh_action "${SERVICES[@]}" >/dev/null || true
    fi
fi

exit 0
