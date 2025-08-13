#!/bin/sh

bspc desktop --focus 1

alacritty -e bash -c "~/.config/_my_scripts/fetch.sh; exec bash" &
code &