#!/bin/sh

if [ ! -d "/etc/letsencrypt/live/${DOMAIN}" ]; then
	nginx &
fi

while true
do
	if [ -d "/etc/letsencrypt/live/${DOMAIN}" ]; then
		sed -i "s/|DOMAIN|/${DOMAIN}/g" /etc/nginx/conf.d/default.ssl.conf
		sed -i "s/#//g" /etc/nginx/conf.d/default.ssl.conf
		killall -9 nginx;
		break;
	fi

	echo "Waiting for a certificate"
	sleep 5;
done

exec nginx -g "daemon off;"
