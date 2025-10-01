#!/system/bin/sh
MAGISK_MODULE_PATH=/data/adb/modules/fogostemplate

log() { echo "[fogostemplate] $1" > /dev/kmsg; }

log "Running post-fs-data.sh"

[ -d $MAGISK_MODULE_PATH/system ] && mount -o bind $MAGISK_MODULE_PATH/system /system
[ -d $MAGISK_MODULE_PATH/vendor ] && mount -o bind $MAGISK_MODULE_PATH/vendor /vendor
[ -d $MAGISK_MODULE_PATH/odm ] && mount -o bind $MAGISK_MODULE_PATH/odm /odm
[ -d $MAGISK_MODULE_PATH/apex ] && mount -o bind $MAGISK_MODULE_PATH/apex /apex
[ -d $MAGISK_MODULE_PATH/system_ext ] && mount -o bind $MAGISK_MODULE_PATH/system_ext /system_ext
[ -d $MAGISK_MODULE_PATH/product ] && mount -o bind $MAGISK_MODULE_PATH/product /product
[ -d $MAGISK_MODULE_PATH/data ] && mount -o bind $MAGISK_MODULE_PATH/data /data
[ -d $MAGISK_MODULE_PATH/cache ] && mount -o bind $MAGISK_MODULE_PATH/cache /cache

log "Bind mounts OK"
