#!/bin/bash
dunstctl set-paused true
loginctl lock-session $XDG_SESSION_ID
dunstctl set-paused false
