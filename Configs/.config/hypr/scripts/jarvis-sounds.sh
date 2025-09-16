#!/bin/bash

SOUND_DIR="/home/$USERNAME/.sounds/jarvis"

play_jarvissound() {
    local sound=\$1
    pw-play "\$SOUND_DIR/\$sound"
}

case \$1 in
    startup) play_jarvissound "jarvis-startup.mp3" ;;
    shutdown) play_jarvissound "jarvis-shutdown.mp3" ;;
    notification) play_jarvissound "jarvis-notification.mp3" ;;
    warning) play_jarvissound "jarvis-warning.mp3" ;;
    gaming) play_jarvissound "jarvis-gaming.mp3" ;;
    streaming) play_jarvissound "jarvis-streaming.mp3" ;;
    work) play_jarvissound "jarvis-work.mp3" ;;
    screen-capture) play_jarvissound "jarvis-screen-capture.mp3" ;;
    update) play_jarvissound "jarvis-update.mp3" ;;
    *) echo "Unknown sound: \$1" ;;
esac
