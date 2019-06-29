#!/system/bin/sh
# Do NOT assume where your module will be located.
# ALWAYS use $MODDIR if you need to know where this script
# and module is placed.
# This will make sure your module will still work
# if Magisk change its mount point in the future
MODDIR=${0%/*}


#Check, every 60 seconds. whether an instance of dnscrypt-proxy is running,if not, keep looping
# till network is available & start dnscrypt-proxy.

	while ! [ `pgrep -x dnscrypt-proxy` ] ; do
		$MODDIR/system/bin/dnscrypt-proxy -config  /data/media/0/dnscrypt-proxy/dnscrypt-proxy.toml && sleep 60;
	done

