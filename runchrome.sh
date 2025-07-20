#!/usr/bin/env bash
export DISPLAY=127.0.0.1:1
export MOZ_ENABLE_WAYLAND=0
export XDG_SESSION_TYPE=x11
google-chrome-stable --ozone-platform=x11
