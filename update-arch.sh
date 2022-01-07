#!/bin/bash
trap "exit" INT TERM; trap "kill 0" EXIT; sudo -v || exit $?; sleep 1; while true; do sleep 60; sudo -nv; done 2>/dev/null &
rustup update
flatpak update -y
sudo snap refresh
sudo pacman --overwrite "*" -Syu --noconfirm
paru -Sua --noconfirm
paru --overwrite "*" -Syu --noconfirm
