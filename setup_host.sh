#!/bin/bash

apt update
apt install -y nfs-common
mkdir -p /var/nfs/keys

while [ ! -f /var/nfs/keys/id_rsa ]; do
  mount 192.168.1.1:/var/nfs/keys /var/nfs/keys
  sleep 10
done

cp /var/nfs/keys/id_rsa* /users/cn991538/.ssh/
chown cn991538: /users/cn991538/.ssh/id_rsa*
runuser -u cn991538 -- cat /users/cn991538/.ssh/id_rsa.pub >> /users/cn991538/.ssh/authorized_keys
