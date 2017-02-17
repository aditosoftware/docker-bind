#!/bin/sh -x

if [ ! -d '/etc/bind/master/' ]
then
    cp -Rf /a/data/master/ /etc/bind/
fi

named -4 -g