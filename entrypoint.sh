#!/bin/bash

CRON=${CRON:-"0 1 * * *"}
ES_HOST=${ES_HOST:-"elasticsearch"}
KEEP_DAYS=${KEEP_DAYS:-"7"}
COMMAND=${COMMAND:-"delete indices --older-than ${KEEP_DAYS} --time-unit days --timestring '%Y.%m.%d'"}

echo "$CRON curator --host ${ES_HOST} ${COMMAND}" >>/etc/crontabs/root

crond -f -d 8 -l 8
