#!/bih/bash

VBOX_VERSION=4.1.0

echo Installing the virtualbox guest additions $VBOX_VERSION

apt-get -y install linux-headers-$(uname -r) build-essential

URL_BASE=http://download.bring.out.ba:7999

echo kupim image sa $URL_BASE

cd /tmp
wget $URL_BASE/virtualbox/VBoxGuestAdditions_$VBOX_VERSION.iso
mount -o loop VBoxGuestAdditions_$VBOX_VERSION.iso /mnt
cp /mnt/VBoxLinuxAdditions.run ~/vbox/
umount /mnt

rm VBoxGuestAdditions_$VBOX_VERSION.iso
cd ~/vbox

echo `pwd`

sh ./VBoxLinuxAdditions.run

