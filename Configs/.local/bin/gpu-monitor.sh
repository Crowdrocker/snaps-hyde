# ~/.local/bin/gpu-monitor.sh
#!/bin/bash

while true; do
    TEMP=$(sensors | grep 'edge' | awk '{print $2}' | sed 's/+//g' | sed 's/°C//g')

    if (( $(echo "$TEMP > 75" | bc -l) )); then
        pw-play ~/.config/hypr/sounds/jarvis-warning.mp3
        notify-send "🤖 J.A.R.V.I.S." "GPU temperature critical: ${TEMP}°C"
    fi

    sleep 30
done
