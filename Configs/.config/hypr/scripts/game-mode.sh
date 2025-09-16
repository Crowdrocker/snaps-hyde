# ~/.config/hypr/scripts/game-mode.sh
#!/bin/bash

echo "🎮 J.A.R.V.I.S.: Gaming mode activated."
pw-play ~/.config/hypr/sounds/jarvis-gaming.mp3

# Enable GameMode
gamemoded &

# Set GPU performance mode
echo "high" | sudo tee /sys/class/drm/card0/device/power_dpm_force_performance_level

# Disable compositor effects for performance
hyprctl keyword decoration:blur:enabled false
hyprctl keyword decoration:drop_shadow false

# Set CPU governor to performance
echo "performance" | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor

notify-send "🤖 J.A.R.V.I.S." "Gaming systems at maximum performance"
