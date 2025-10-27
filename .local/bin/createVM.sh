#!/usr/bin/env bash
set -eu

virt-install --connect $LIBVIRT_DEFAULT_URI \
--name alps --description "Alpine Linux VM Test" --osinfo=alpinelinux3.21 \
--memory=2048 --vcpus=2 \
--disk path=/media/disk/VM-Images/Alpine3.22-VM.qcow2,bus=virtio,size=21 \
--graphics spice --cdrom /media/disk/ISOs/alpine-standard-3.22.0-x86_64.iso \
--network network=default
