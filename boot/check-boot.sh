#!/bin/bash

set -ue

CurrentPath="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

mkdir -p /mnt/local-boot
mkdir -p /mnt/mobile-boot

mount UUID=BEF6-D74B /mnt/local-boot
mount UUID=E611-E347 /mnt/mobile-boot

sha512sum -c $CurrentPath/checksums

umount /mnt/local-boot
umount /mnt/mobile-boot

