#! /bin/bash

IMGDIR="/var/www/html"
BDDIR="/home/sysadmin/logcheck/bds"

rrdtool graph  $IMGDIR/logs.png  \
        --imgformat PNG \
        --start now-$1  \
        --end now \
        --title "LOGS"  \
        --vertical-label "#Logs" \
        --height 200 \
        --width 605 \
        --color ARROW#0000FF \
        -W "apalermo.noip.me" \
        DEF:v1=$BDDIR/logs.rrd:logs:LAST \
        AREA:v1#FFFF00:" \n" \
        GPRINT:v1:LAST:"Actual\: %5.0lf" \
        GPRINT:v1:AVERAGE:"Prom.\: %5.2lf" \
        GPRINT:v1:MAX:"Max.\: %5.0lf\n" \
        COMMENT:" Cantidad de logs \n" > /dev/null

