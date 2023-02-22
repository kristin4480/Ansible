#!/bin/bash
newIP=$1
newGW=$2

oldIP=$(ip a | grep global | grep ens | awk '{print $2}' | awk -F '/' '{print $1}') #this may vary depending on your interfaces, please check further
oldGW=$(grep gateway 00-installer-config.yaml | awk '{print $2}')

sed -i "s/$oldIP/$newIP/" /etc/netplan/00-installer-config.yaml
sed -i "s/$oldGW/$newGW/" /etc/netplan/00-installer-config.yaml

sudo netplan apply
