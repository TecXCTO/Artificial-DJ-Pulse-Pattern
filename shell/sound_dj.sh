#!/bin/bash
echo "ਗੀਤ ਦੀ ਆਵਾਜ਼ ਸੁਣ ਰਿਹਾ ਹੈ... ਕੋਈ ਗੀਤ ਪਲੇਅ ਕਰੋ।"

trap "termux-torch off; exit" INT

while true; do
    # 0.2 ਸੈਕਿੰਡ ਲਈ ਆਵਾਜ਼ ਰਿਕਾਰਡ ਕਰਨਾ
    termux-microphone-record -d 1 -f /sdcard/TermuxAudioTest.amr &>/dev/null

    # ਜੇਕਰ ਆਵਾਜ਼ ਉੱਚੀ ਹੈ (ਇਹ ਬੇਸਿਕ ਸਾਊਂਡ ਚੈੱਕ ਹੈ)
    # ਨੋਟ: ਕੁਝ ਫੋਨਾਂ ਵਿੱਚ termux-volume ਜਾਂ termux-sensor ਨਾਲ ਬਿਹਤਰ ਕੰਮ ਕਰਦਾ ਹੈ
    termux-torch on
    sleep 0.08
    termux-torch off
    sleep 0.05
done
