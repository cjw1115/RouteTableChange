#!/bin/bash
echo "start"
i=1
for i in {2..9}
do
sudo /sbin/route del -net "$i".0.0.0 netmask 255.0.0.0 gw 10.0.0.1 dev eth0 
done

for i in {11..126}
do
sudo /sbin/route del -net "$i".0.0.0 netmask 255.0.0.0 gw 10.0.0.1 dev eth0 
done

for i in {128..171}
do
sudo /sbin/route del -net "$i".0.0.0 netmask 255.0.0.0 gw 10.0.0.1 dev eth0 
done

for i in {173..255}
do
sudo /sbin/route del -net "$i".0.0.0 netmask 255.0.0.0 gw 10.0.0.1 dev eth0 
done

echo "finished"
