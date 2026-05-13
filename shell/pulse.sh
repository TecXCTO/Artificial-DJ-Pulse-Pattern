# nano pulse.sh
#!/bin/bash
echo "ਡੀਜੇ ਮਿਊਜ਼ਿਕ ਪਲਸਿੰਗ ਚਾਲੂ ਹੈ... ਬੰਦ ਕਰਨ ਲਈ Ctrl+C ਦਬਾਓ।"

# ਬੰਦ ਕਰਨ 'ਤੇ ਲਾਈਟ ਆਫ ਕਰਨ ਲਈ
trap "termux-torch off; exit" INT

while true; do
    # ਰੈਂਡਮ ਬੀਟਸ ਦੀ ਸਪੀਡ ਤੈਅ ਕਰਨਾ
    SPEEDS=(0.04 0.08 0.15 0.05 0.2 0.03)
    RANDOM_SPEED=${SPEEDS[$RANDOM % ${#SPEEDS[@]}]}

    termux-torch on
    sleep $RANDOM_SPEED
    termux-torch off

    # ਬੀਟਸ ਦੇ ਵਿਚਕਾਰ ਰੈਂਡਮ ਗੈਪ
    GAPS=(0.05 0.1 0.3 0.05 0.2)
    RANDOM_GAP=${GAPS[$RANDOM % ${#GAPS[@]}]}
    sleep $RANDOM_GAP
done

