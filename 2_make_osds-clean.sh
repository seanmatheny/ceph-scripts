#!/bin/bash
#step 2: clean OSD disks 
for i in b c d e f g h i j k l m n o p q
do
  echo "----${i}—"
  umount /dev/sd${i}1
  dd if=/dev/zero of=/dev/sd${i} bs=4096k count=400 ##bug in the ceph-disk zap that doesn’t zap enough for bluestore
  sgdisk --zap-all --clear --mbrtogpt -g -- /dev/sd${i}
done
