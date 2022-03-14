#!/bin/bash
mkfs -t ext4 /dev/xvdb
mkdir /data
mount /dev/xvdb /data
echo /dev/xvdb  /data ext4 defaults,nofail 0 2 >> /etc/fstab