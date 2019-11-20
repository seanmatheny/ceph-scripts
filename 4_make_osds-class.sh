#!/bin/bash
#this prevents rebalancing if you're adding new OSDs to a
#different CRUSH device class 
#change OSD range below to suit
for i in {144..159}
do
  echo "changing device class for osd $i"
  ceph osd crush rm-device-class ${i}
  ceph osd crush set-device-class hddp2 ${i}
done
