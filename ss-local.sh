#!/bin/sh



echo ${SS_UDP="-u"}

echo ${SS_OTA=""}

ss-local -s $SS_SERVER_HOST -p $SS_SERVER_PORT -b 0.0.0.0 -l $SS_LOCAL_PORT -m $SS_SERVER_METHOD -k $SS_SERVER_PWD -t 60 $SS_UDP $SS_OTA
  