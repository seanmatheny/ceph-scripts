#!/bin/bash
#fix /dev/sd* ownership for ceph-osd to work after reboot
#change partition numbers to suit
for part in {1..16}
do
/bin/chown ceph:ceph /dev/nvme0n1p${part}
done
#and the osd parts too
for osd in b c d e f g h i j k l m n o p q
do
/bin/chown ceph:ceph /dev/sd${osd}1
/bin/chown ceph:ceph /dev/sd${osd}
done
#aetd nagios user so disk checks don't fail
set usermod -a -G nagios ceph
