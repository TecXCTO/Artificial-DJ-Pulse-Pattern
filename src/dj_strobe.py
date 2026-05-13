import subprocess
import time
import sys

print("Fast Triple Strobe Active... Press Ctrl+C to stop.")

def toggle_torch(state):
    subprocess.run(["termux-torch", state], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)

try:
    while True:
        # Execute 3 rapid structural blinks
        for _ in range(3):
            toggle_torch("on")
            time.sleep(0.05)
            toggle_torch("off")
            time.sleep(0.05)
        
        # Consistent rhythmic rest interval
        time.sleep(0.3)

except KeyboardInterrupt:
    print("\nStopping Strobe...")
    toggle_torch("off")
    sys.exit(0)
  
