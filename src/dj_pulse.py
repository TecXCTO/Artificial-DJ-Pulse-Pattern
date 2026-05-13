import subprocess
import time
import random
import sys

print("DJ Music Pulsing Active... Press Ctrl+C to stop.")

def toggle_torch(state):
    # Executes 'termux-torch on' or 'termux-torch off' using subprocess
    subprocess.run(["termux-torch", state], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)

try:
    while True:
        # Define random durations for the light to remain on
        on_durations = [0.04, 0.08, 0.15, 0.05, 0.2, 0.03]
        random_on = random.choice(on_durations)
        
        # Turn Torch On
        toggle_torch("on")
        time.sleep(random_on)
        
        # Turn Torch Off
        toggle_torch("off")
        
        # Define random silence/pause periods between pulses
        pause_gaps = [0.05, 0.1, 0.3, 0.05, 0.2]
        random_gap = random.choice(pause_gaps)
        time.sleep(random_gap)

except KeyboardInterrupt:
    # Ensures the LED hardware turns off cleanly upon script exit
    print("\nStopping DJ Pulse...")
    toggle_torch("off")
    sys.exit(0)
  
