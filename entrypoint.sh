#!/bin/bash
{
	cp /docker-cronlock-init.d/cronlock.conf /etc/
	for f in /docker-cronlock-init.d/*.sh; do
		. $f
	done
} &> /dev/null

cron -f
