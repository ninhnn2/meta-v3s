#!/bin/bash

echo "34" > /sys/class/gpio/export;echo "out" > /sys/class/gpio/gpio34/direction;echo "1" > /sys/class/gpio/gpio34/value
echo "195" > /sys/class/gpio/export;echo "out" > /sys/class/gpio/gpio195/direction;echo "0" > /sys/class/gpio/gpio195/value
sudo /sbin/ifconfig eth0 up
sudo /sbin/udhcpc -i eth0
sudo /home/root/sshd start
