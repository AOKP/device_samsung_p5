#!/bin/sh

BASE=../../../vendor/samsung/p5wifi/proprietary
LOCALBASE=~/MyAndroidSystem3G
rm -rf $BASE/*

for FILE in `cat proprietary-files.txt`; do
    DIR=`dirname $FILE`
    if [ ! -d $BASE/$DIR ]; then
        mkdir -p $BASE/$DIR
    fi
    cp $LOCALBASE/$FILE $BASE/$FILE
done

./setup-makefiles.sh
