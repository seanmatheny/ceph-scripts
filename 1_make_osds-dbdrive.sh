#!/bin/bash
#prepare rocks.db / wal partitions on NVME or SSD ($DBDEVICE)
$DBDEVICE = '/dev/nvme0n1'
parted $DBDEVICE mklabel gpt
#
parted -a optimal $DBDEVICE mkpart logical 0% 115GB
parted -a optimal $DBDEVICE mkpart logical 115GB 230GB
parted -a optimal $DBDEVICE mkpart logical 230GB 345GB
parted -a optimal $DBDEVICE mkpart logical 345GB 460GB
parted -a optimal $DBDEVICE mkpart logical 460GB 575GB
parted -a optimal $DBDEVICE mkpart logical 575GB 690GB
parted -a optimal $DBDEVICE mkpart logical 690GB 805GB
parted -a optimal $DBDEVICE mkpart logical 805GB 920GB
parted -a optimal $DBDEVICE mkpart logical 920GB 1035GB
parted -a optimal $DBDEVICE mkpart logical 1035GB 1150GB
parted -a optimal $DBDEVICE mkpart logical 1150GB 1265GB
parted -a optimal $DBDEVICE mkpart logical 1265GB 1380GB
parted -a optimal $DBDEVICE mkpart logical 1380GB 1495GB
parted -a optimal $DBDEVICE mkpart logical 1495GB 1610GB
parted -a optimal $DBDEVICE mkpart logical 1610GB 1725GB
parted -a optimal $DBDEVICE mkpart logical 1725GB 1840GB
parted -a optimal $DBDEVICE mkpart logical 1840GB 1955GB
parted -a optimal $DBDEVICE mkpart logical 1955GB 2070GB
parted -a optimal $DBDEVICE mkpart logical 2070GB 2185GB
parted -a optimal $DBDEVICE mkpart logical 2185GB 2300GB
parted -a optimal $DBDEVICE mkpart logical 2300GB 2415GB
parted -a optimal $DBDEVICE mkpart logical 2415GB 2530GB
parted -a optimal $DBDEVICE mkpart logical 2530GB 2645GB
parted -a optimal $DBDEVICE mkpart logical 2645GB 2760GB
parted -a optimal $DBDEVICE mkpart logical 2760GB 2875GB
parted -a optimal $DBDEVICE mkpart logical 2875GB 2990GB
parted -a optimal $DBDEVICE mkpart logical 2990GB 3105GB
parted -a optimal $DBDEVICE mkpart logical 3105GB 3220GB
parted -a optimal $DBDEVICE mkpart logical 3220GB 3335GB
parted -a optimal $DBDEVICE mkpart logical 3335GB 3450GB
parted -a optimal $DBDEVICE mkpart logical 3450GB 3565GB
parted -a optimal $DBDEVICE mkpart logical 3565GB 3680GB
