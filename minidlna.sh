#!/bin/sh
# minidlna.sh
# instalacja i konfiguracja miniDLNA
# siwinskb 2019

apt-get install minidlna -y

mkdir /media/dysk1/minidlna
mkdir /media/dysk1/minidlna/db
mkdir /media/dysk1/minidlna/log

chmod 777 -R /media/dysk1/minidlna

patch -d/ -p0 < minidlna.patch

rm -r /var/lib/minidlna
rm -r /var/log/minidlna.log

/etc/init.d/minidlna restart
