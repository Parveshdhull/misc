This is a simple python script which checks JioFi battery every 2 Minutes and notifies if level is lower than desired level. This Script works on both Linux and Windows.

## Python Version:
Python 3

## Prerequisite:
pip install requests

pip install py-notifier

#### Additional Installation only for Windows
pip install win10toast

## Parameters
-> url - JioFI's gateway address ( Use route -n for find ) (Most Probably 192.168.225.1 or 192.168.255.1)

-> min - Minimum Percentage Required

## Usage
**Simple Use**

	python jiofi_battery_notifier.py
	
**Auto Start at Boot**

	Follow guidelines for your operating system for running python scripts at startup.

## Troubleshooting
####  Gateway Url Wrong
	Change default gateway Url of your JioFi
#### Unable to find percentage from requests
	Print response using using print(response.text) and find out what pattern is used for your device
#### Others
	Debug your code and find out what is going wrong and if you need my help reach me at "git.hrca@gmail.com"






