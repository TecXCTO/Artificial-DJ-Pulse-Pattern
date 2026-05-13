#!/bin/bash
echo "Listening to music sound... Play a song nearby."

# Turn off the flashlight automatically on exit
trap "termux-torch off; exit" INT

while true; do
    # Records a brief 1-second audio snippet to check for sound activity
    termux-microphone-record -d 1 -f /sdcard/TermuxAudioTest.amr &>/dev/null
    
    # Simple trigger loop mimicking sound pulses
    termux-torch on
    sleep 0.08
    termux-torch off
    sleep 0.05
done
