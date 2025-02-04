#!/bin/bash

## Criando volume compartilhado NFS
apt install -y nfs-kernel-server

## Mandar pro exports:
cp /etc/exports /etc/exports.bkp
cp exports /etc/

## Criar pasta e permissões
mkdir -p /mnt/nfs/www
cp -R static /mnt/nfs/www
mkdir -p /mnt/nfs/www/static/salavermelha
mkdir -p /mnt/nfs/www/static/salaazul
mkdir -p /mnt/nfs/www/static/c911d7f3-83c9-474c-b2da-83614d2e8f1a
mkdir -p /mnt/nfs/www/static/424244a4-0c36-4b59-86d3-ec2fe809ab86
mkdir -p /mnt/nfs/www/static/room

cp static/red.html /mnt/nfs/www/static/salavermelha/index.html
cp static/red.html /mnt/nfs/www/static/c911d7f3-83c9-474c-b2da-83614d2e8f1a/index.html
cp static/blue.html /mnt/nfs/www/static/salaazul/index.html
cp static/blue.html /mnt/nfs/www/static/424244a4-0c36-4b59-86d3-ec2fe809ab86/index.html
cp static/room.html /mnt/nfs/www/static/teste.html
cp static/room.html /mnt/nfs/www/static/salavermelha/teste.html
cp static/room.html /mnt/nfs/www/static/salaazul/teste.html
cp static/room.html /mnt/nfs/www/static/room/teste.html
cp static/room.html /mnt/nfs/www/static/room/

chown -R nobody:65534 /mnt/nfs
chmod 755 -R /mnt/nfs

## Reiniciar o serviço
systemctl restart nfs-server