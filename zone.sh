#!/bin/sh
#

import subprocess
import time

# Function to get the current time in seconds since the epoch
start_time = int(time.time())

try:
    while True:
        current_time = int(time.time())
        seconds = current_time - start_time
        # Calculate days, hours, minutes, and seconds
        days = seconds // 86400
        hours = (seconds // 3600) % 24
        minutes = (seconds // 60) % 60
        secs = seconds % 60
        # Using subprocess to clear the line and print output similar to the shell script
        subprocess.call('echo -en "\r                                        \r"', shell=True)
        subprocess.call(f'printf "Timer: %02d:%02d:%02d:%02d" {days} {hours} {minutes} {secs}', shell=True)
        # Sleep for 1 second
        time.sleep(1)
except KeyboardInterrupt:
    print("\nTimer stopped.")
