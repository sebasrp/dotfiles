#!/usr/bin/python

import time
import os
import subprocess

# Number of seconds we want in between the different timezones
cycle_interval = 10
date_format = "%l:%M %p"

timezones_with_flag = [
	("🇺🇸 MPK", "US/Pacific"),
	("🇮🇪 DUB", "Europe/Dublin"),
	("🇸🇬 SG", "Asia/Hong_Kong"),
]

timezones = [
	("MPK", "US/Pacific"),
	("DUB", "Europe/Dublin"),
	("SG", "Asia/Hong_Kong"),
]

index = 0
while True:
	cur=time.time()
	original_tz = os.environ.get("TZ", "")

	tz = timezones[index % len(timezones)]
	os.environ["TZ"] = tz[1]
	time.tzset()
	tz_time = time.strftime("%l:%M %p", time.localtime(cur))

	os.environ["TZ"] = original_tz

	index += 1
	#result = subprocess.run(["TZ=':US/Pacific'", "date", "+'%l:%M %p'"], stdout=subprocess.PIPE)
	print(f"{tz[0]} {tz_time}")
	time.sleep(cycle_interval)