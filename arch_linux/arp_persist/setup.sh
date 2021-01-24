#!/bin/sh

sudo cp arp_persist.py /usr/bin
sudo chmod +x arp_persist.py
sudo cp arp_persist.service /etc/systemd/system
sudo systemctl enable arp_persist
sudo systemctl start arp_persist