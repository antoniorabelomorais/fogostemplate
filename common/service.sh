#!/system/bin/sh
log() { echo "[fogostemplate service] $1" > /dev/kmsg; }
log "module service started"
