#!/bin/bash

if [ -e "movestack.c" ]
then
    echo "FILE EXIST"
    rm movestack.c
fi

rm -rf config.h
rm -rf config.def.h
cp config.h.backup config.h
cp config.h.backup config.def.h

rm dwm.c
cp dwm.c.orig dwm.c

echo "resetting config..";

patch -p1 < dwm-movestack-6.1.diff
sed -i '1s/^/#include "movestack.c"/' config.h

patch -p1 < dwm-attachbottom-6.2.diff

echo "done.."

sudo make clean install

