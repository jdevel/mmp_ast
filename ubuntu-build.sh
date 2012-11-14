#!/bin/bash
apt-get update
apt-get install build-essential zip ccache doxygen linux-headers-2.6.24-26-server screen unzip
apt-get clean
echo "crc_ccitt" >> /etc/modules
modprobe -a crc_ccitt
