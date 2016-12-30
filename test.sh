#!/bin/bash
echo "start"

sudo /sbin/route add -net 123.0.0.0 netmask 255.0.0.0 gw 10.0.0.1 dev eth0 
sudo /sbin/route del 123.0.0.0
i=0;
for((i=2;i<10;i++));do
sudo /sbin/route add -net "$i".0.0.0 netmask 255.0.0.0 gw 10.0.0.1 dev eth0 
done


for((i=11;i<127;i++));do
sudo /sbin/route add -net "$i".0.0.0 netmask 255.0.0.0 gw 10.0.0.1 dev eth0 
done

for((i=128;i<172;i++));do
sudo /sbin/route add -net "$i".0.0.0 netmask 255.0.0.0 gw 10.0.0.1 dev eth0 
done


for((i=173;i<256;i++));do
sudo /sbin/route add -net "$i".0.0.0 netmask 255.0.0.0 gw 10.0.0.1 dev eth0 
done

echo "finished"
