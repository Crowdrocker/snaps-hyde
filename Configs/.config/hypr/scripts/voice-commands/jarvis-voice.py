#!/usr/bin/env python3

import speech_recognition as sr
import os
import subprocess

def listen():
    r = sr.Recognizer()
    with sr.Microphone() as source:
        print("Listening...")
        audio = r.listen(source)

    try:
        command = r.recognize_google(audio).lower()
        print(f"Command: {command}")
        return command
    except sr.UnknownValueError:
        return "Sorry, I didn't catch that"
    except sr.RequestError:
        return "Sorry, my speech service is down"

def execute_command(command):
    if "open browser" in command:
        subprocess.Popen(["brave"])
        return "Opening browser"
    elif "open terminal" in command:
        subprocess.Popen(["xfce4-terminal"])
        return "Opening terminal"
    elif "take screenshot" in command:
        subprocess.Popen(["~/.config/hypr/scripts/screenshot.sh", "full"])
        return "Taking screenshot"
    elif "gaming mode" in command:
        subprocess.Popen(["gamemoded", "-r"])
        subprocess.Popen(["~/.config/hypr/scripts/jarvis-sounds.sh", "gaming"])
        return "Gaming mode activated"
    elif "work mode" in command:
        subprocess.Popen(["~/.config/hypr/scripts/jarvis-sounds.sh", "work"])
        return "Work mode activated"
    else:
        return "Command not recognized"

if __name__ == "__main__":
    while True:
        command = listen()
        if "jarvis" in command:
            response = execute_command(command)
            print(f"J.A.R.V.I.S.: {response}")
