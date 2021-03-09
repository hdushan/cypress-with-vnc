#! /bin/bash

x11vnc -nopw -forever -shared -rfbport 5900 -rfbportv6 5900 -display ${DISPLAY}