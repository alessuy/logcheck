#! /bin/bash

path="/home/sysadmin/logcheck"

datoprev=$(cat $path/last.data)
datoactual=$(wc -l /var/log/casa/red.log | awk '{print $1}')
echo $datoactual > $path/last.data

let logs=$datoactual-$datoprev

rrdtool update $path/bds/logs.rrd  $(date +%s):$logs
