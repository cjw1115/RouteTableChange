#!/bin/bash
echo "pant start"
v=$(sudo wget http://gdjwgl.bjut.edu.cn)
echo "$v"
sudo rm -rf ./index.html
sudo rm -rf /home/cjw1115/route/pant_log.txt
echo "pant end"
