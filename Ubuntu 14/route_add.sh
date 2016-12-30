#!/bin/bash
echo "start"

v=$(sudo /sbin/route del default)
echo "$v"

for((i=1;i<172;i++));do
sudo /sbin/route add -net "$i".0.0.0 netmask 255.0.0.0 gw 10.0.0.1 dev eth0 
done


for((i=173;i<256;i++));do
sudo /sbin/route add -net "$i".0.0.0 netmask 255.0.0.0 gw 10.0.0.1 dev eth0 
done

sudo /sbin/route add -net 172.0.0.0 netmask 255.0.0.0 gw 1.1.1.1 dev tun0
 
echo "finished"

v=$(/sbin/route)
echo "$v"
