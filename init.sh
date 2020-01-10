#!/bin/sh
exec 3>&1
lighttpd -D -f /etc/lighttpd/lighttpd.conf
