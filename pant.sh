#!/bin/bash
echo "pant start"
v=$(sudo wget http://gdjwgl.bjut.edu.cn)
echo "$v"
sudo rm -rf ./index.html
echo "pant end"
