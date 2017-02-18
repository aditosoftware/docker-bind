#!/bin/sh -x

if [ ! -d '/etc/bind/master/' ]
then
    cp -Rf /a/data/master/ /etc/bind/
fi

if [ ! -f '/etc/bind/rndc.key' ]
then
    rndc-confgen -a
fi

named -4 -g