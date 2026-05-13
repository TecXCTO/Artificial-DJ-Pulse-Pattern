# Custom Pattern Script

#!/bin/bash
echo "ਡੀਜੇ ਲਾਈਟ ਪੈਟਰਨ ਚੱਲ ਰਿਹਾ ਹੈ... ਬੰਦ ਕਰਨ ਲਈ Ctrl+C ਦਬਾਓ।"
while true; do
    # 3 ਤੇਜ਼ ਝਟਕੇ (Fast Blinks)
    for i in {1..3}; do
        termux-torch on && sleep 0.05
        termux-torch off && sleep 0.05
    done
    # ਥੋੜਾ ਜਿਹਾ ਗੈਪ (Short Pause)
    sleep 0.3
done
