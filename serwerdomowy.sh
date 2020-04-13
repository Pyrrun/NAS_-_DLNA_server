#!/bin/sh
# serwerdomowy.sh
# konfiguracja nowego systemu i serwis SMB i miniDLNA
# siwinskb 2019
# Skrypt uruchamiany jest jako root na bazowym systemie

USER=ba
PASSWD=1

PATH=$PATH:.

apt-get update -y
DEBIAN_FRONTEND=noninteractive apt-get upgrade -y

yes | echo "$PASSWD\n$PASSWD\n" | adduser $USER
echo "$PASSWD\n$PASSWD\n" | usermod -aG sudo $USER

siec.sh
dysk.sh
samba.sh
minidlna.sh
