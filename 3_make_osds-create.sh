#!/bin/bash
#create OSDs and activate them
#change drive paths to suit
ceph-disk prepare --bluestore /dev/sdb --block.db /dev/nvme0n1p1 
ceph-disk prepare --bluestore /dev/sdc --block.db /dev/nvme0n1p2
ceph-disk prepare --bluestore /dev/sdd --block.db /dev/nvme0n1p3 
ceph-disk prepare --bluestore /dev/sde --block.db /dev/nvme0n1p4 
ceph-disk prepare --bluestore /dev/sdf --block.db /dev/nvme0n1p5 
ceph-disk prepare --bluestore /dev/sdg --block.db /dev/nvme0n1p6 
ceph-disk prepare --bluestore /dev/sdh --block.db /dev/nvme0n1p7 
ceph-disk prepare --bluestore /dev/sdi --block.db /dev/nvme0n1p8 
ceph-disk prepare --bluestore /dev/sdj --block.db /dev/nvme0n1p9 
ceph-disk prepare --bluestore /dev/sdk --block.db /dev/nvme0n1p10 
ceph-disk prepare --bluestore /dev/sdl --block.db /dev/nvme0n1p11 
ceph-disk prepare --bluestore /dev/sdm --block.db /dev/nvme0n1p12 
ceph-disk prepare --bluestore /dev/sdn --block.db /dev/nvme0n1p13 
ceph-disk prepare --bluestore /dev/sdo --block.db /dev/nvme0n1p14 
ceph-disk prepare --bluestore /dev/sdp --block.db /dev/nvme0n1p15 
ceph-disk prepare --bluestore /dev/sdq --block.db /dev/nvme0n1p16 
#
#fix ownership
chmod -R /var/lib/ceph
for i in {1..16}
do
  chown ceph:ceph /dev/nvme0n1p${i}
done
##activate
for p in b c d e f g h i j k l m n o p q
do
  echo "----${p}---"
  chown ceph:ceph /dev/sd${p}
  sleep 1
  ceph-disk activate /dev/sd${p}1
  echo "---"
done
