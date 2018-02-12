
#!/bin/sh
#
# Script: ipv6-kernel-disable.sh (system-hardening)
# Description:Hardening - Disables IPv6 using kernel arguments
# License: GPLv2
########################################
# Disable IPv6 from Kernel
########################################
/sbin/grubby --update-kernel=ALL --args="ipv6.disable=1"
/usr/bin/sed -i "s/quiet/quiet ipv6.disable=1" /etc/default/grub
