# Persist ARP Entries

This is only tested in Arch Linux and might not work in other distributions. But you can use this concept for  persist ARP entries and survive reboot for other distributions.(See Working)

## Usage

sudo ./setup.sh

## Test

After booting system wait for 2 Minutes, Because of added delay so that all interface will be up. Then you can test using

​	```systemctl status arp_request```

or

​	```arp -a```

And in arp entry you will see "PERM"

## Working

### arp_persist.py

This is a simple script which sets arp entry.

Why Try-Catch and Loop?

If you are not connected to interface this will throw error that's why used try-catch and you might connect interface any random time that's why it tries to add entry every 150 Sec. Don't worry about resource consumption it only consumes 4 MB Ram.

### arp_persist.service

This only creates a service which calls above script on boot. This is for arch linux, for other distributions follow guidelines for running python scripts at startup.

## setup.sh

This shell script copies files at desired locations and then enables service. Don't use for other distribution, You have to manually enable running python script "arp_persist.py" at boot.

## Troubleshoot

You can use same concept and can also use for other distributions. If you encounter any problem and  need my help,you can reach me at "git.hrca@gmail.com"