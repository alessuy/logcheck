#! /bin/bash

rrdtool create bds/logs.rrd --start now --step 300 \
        DS:logs:GAUGE:600:0:U  \
        RRA:AVERAGE:0.5:1:600 \
        RRA:AVERAGE:0.5:6:700 \
        RRA:AVERAGE:0.5:24:775 \
        RRA:AVERAGE:0.5:288:797 \
	RRA:LAST:0.5:1:600 \
        RRA:LAST:0.5:6:700 \
        RRA:LAST:0.5:24:775 \
        RRA:LAST:0.5:288:797 \
        RRA:MAX:0.5:1:600 \
        RRA:MAX:0.5:6:700 \
        RRA:MAX:0.5:24:775 \
        RRA:MAX:0.5:288:797 \
        RRA:MIN:0.5:1:600 \
        RRA:MIN:0.5:1:600 \
        RRA:MIN:0.5:6:700 \
        RRA:MIN:0.5:24:775 \
        RRA:MIN:0.5:288:797

