#!/usr/bin/env bash
DIR=$(dirname "$0")
STATUS=$(amixer get Capture | tail --lines=1 | grep --fixed-strings --only-matching "[on]")
test "$STATUS" = "[on]" && AUDIOFILE="mute.wav" || AUDIOFILE="unmute.wav"
amixer set Capture toggle
aplay --quiet $DIR/$AUDIOFILE

