#! /bin/sh

ps auxww | grep python3 | grep terrat | grep -v grep | awk '{print $2}' | xargs kill
