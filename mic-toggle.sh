#!/usr/bin/env bash
cd $(dirname "$0")
amixer set Capture toggle
STATUS=$(amixer get Capture | tail --lines=1 | grep --fixed-strings --only-matching "[on]")
test "$STATUS" = "[on]" && AUDIOFILE="unmute.wav" || AUDIOFILE="mute.wav"
aplay --quiet $AUDIOFILE

