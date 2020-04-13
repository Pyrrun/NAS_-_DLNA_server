#!/bin/sh
# dysk.sh
# partycjonowanie i formatowanie dysku
# siwinskb 2019

HD=/dev/sda
DIR=/media/dysk1

echo "o\nn\np\n1\n\n\nw" | sudo fdisk $HD 

sudo mkfs.ext ${HD}1

mkdir $DIR

echo ${HD}1 $DIR auto defaults,nofail 0 2 | sudo tee -a /etc/fstab

mount ${HD}1 $DIR
