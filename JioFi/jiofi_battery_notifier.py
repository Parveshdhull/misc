#!/bin/python

import requests, re, time
from pynotifier import Notification

while True:
	try:

		# Change Jiofi Address if Required
		url = "http://192.168.225.1"
		response = requests.get(url, timeout=1)

		# Finding Battery Percentage From Response
		pattern = r'(id="batterylevel" value=")(\d*)(%")'
		matches = re.findall(pattern, response.text)
		percentage = matches[0][1]

		# Change Min Percentage
		min = 30

		if int(percentage) < min and 'Discharging' in response.text:
			Notification(title='JioFi Battery Notifier',description='Battery Level ' + percentage, duration=5).send()

	except Exception as e:
		pass

	time.sleep(120)		  # Check Every Two Minutes