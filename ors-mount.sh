#!/sbin/sh

MOUNT=`cat /etc/fstab | grep 28 | awk '{print $2}'`

if [ $MOUNT="/sdcard" ]
then
sed -i 's/\/emmc/\/sdcard/g' /cache/recovery/openrecoveryscript
fi
