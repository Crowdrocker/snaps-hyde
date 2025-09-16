# ~/.local/bin/jarvis-welcome.sh
#!/bin/bash

# J.A.R.V.I.S. Welcome & Settings App
jarvis-sound.sh startup

zenity --info --title="🤖 J.A.R.V.I.S. Control Center" \
--text="Welcome back, Matt!

Quick Actions:
• Super + K - This settings menu
• Super + G - Gaming launcher
• Super + W - Work applications
• Super + Space - App launcher
• Super + Return - Terminal

System Status: All systems operational
GPU: RX 580 (Optimal for gaming)
Audio: PipeWire routing active"
