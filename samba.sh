#!/bin/sh
# samba.sh
# instalacja i konfiguracja samby
# siwinskb 2019

USER=ba
PASSWD=a

apt-get install samba samba-common-bin -y

patch -d/ -p0 < samba.patch

echo  "${PASSWD}\n${PASSWD}"
echo  "${PASSWD}\n${PASSWD}" | smbpasswd -a $USER

smbpasswd -e $USER

service smbd restart
