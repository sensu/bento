#!/bin/sh -eux

# Purge files we don't need any longer
rm -rf /var/db/freebsd-update/files;
mkdir -p /var/db/freebsd-update/files;
rm -f /var/db/freebsd-update/*-rollback;
rm -rf /var/db/freebsd-update/install.*;
rm -rf /boot/kernel.old;
for i in `/usr/src/*`; do rm -rf $i; done
rm -f /*.core;
