# nano dj_pulse.sh

# Artificial DJ Pulse Pattern

#!/bin/bash
echo "DJ Music Pulsing is active... Press Ctrl+C to stop."

# Turn off the flashlight automatically on exit
trap "termux-torch off; exit" INT

while true; do
    # Array of random flash durations
    SPEEDS=(0.04 0.08 0.15 0.05 0.2 0.03)
    RANDOM_SPEED=${SPEEDS[$RANDOM % ${#SPEEDS[@]}]}
    
    termux-torch on
    sleep $RANDOM_SPEED
    termux-torch off
    
    # Array of random pause gaps between flashes
    GAPS=(0.05 0.1 0.3 0.05 0.2)
    RANDOM_GAP=${GAPS[$RANDOM % ${#GAPS[@]}]}
    sleep $RANDOM_GAP
done
