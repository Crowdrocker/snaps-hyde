# ~/.local/bin/jarvis-sound.sh
#!/bin/bash

SOUND_DIR="$HOME/.config/hypr/sounds"

case "$1" in
    startup)
        pw-play "$SOUND_DIR/jarvis-startup.mp3"
        ;;
    shutdown)
        pw-play "$SOUND_DIR/jarvis-shutdown.mp3"
        ;;
    notification)
        pw-play "$SOUND_DIR/jarvis-notification.mp3"
        ;;
    gaming)
        pw-play "$SOUND_DIR/jarvis-gaming.mp3"
        ;;
    streaming)
        pw-play "$SOUND_DIR/jarvis-streaming.mp3"
        ;;
    warning)
        pw-play "$SOUND_DIR/jarvis-warning.mp3"
        ;;
    work)
        pw-play "$SOUND_DIR/jarvis-work.mp3"
        ;;
    *)
        echo "Usage: jarvis-sound.sh {startup|shutdown|notification|gaming|streaming|warning|work}"
        ;;
esac
