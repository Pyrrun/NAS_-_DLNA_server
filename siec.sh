#!/bin/sh
# siec.sh
# konfiguracja sieci
# siwinskb 2019

IFN=eth0
INET=192.168.1.254/24

cat <<EOM >/etc/network/interfaces

source /etc/network/interfaces.d/*

auto lo
iface lo inet loopback

auto $IFN
iface $IFN inet dhcp

auto $IFN:1
iface $IFN:1 inet static
        address $INET
	gateway 192.168.1.1
EOM

/etc/init.d/networking restart
