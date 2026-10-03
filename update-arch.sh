#!/bin/bash
trap "exit" INT TERM; trap "kill 0" EXIT; sudo -v || exit $?; sleep 1; while true; do sleep 60; sudo -nv; done 2>/dev/null &
rustup update
flatpak update -y
sudo snap refresh
# Update keys
sudo pacman-key --refresh-keys
sudo pacman-key --init
sudo pacman-key --populate archlinux
sudo pacman -Sy --needed archlinux-keyring --noconfirm

sudo pacman -Rns $(pacman -Qdtq) --noconfirm # Remove orphaned packages
sudo pacman -Sc --noconfirm # Clear uninstalled packages from cache
sudo pacman --overwrite "*" -Syu --noconfirm
paru -Sua --noconfirm
paru --overwrite "*" -Syu --noconfirm
