#!/bin/python

import subprocess
import time

while True:
	try:
		subprocess.call(["arp", "-s" ,"192.168.225.1" ,"aa:bb:cc:dd:ee:ff"])
		time.sleep(150)
	except Exception as e:
		pass
