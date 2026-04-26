#!/bin/bash
trap "exit" INT TERM; trap "kill 0" EXIT; sudo -v || exit $?; sleep 1; while true; do sleep 60; sudo -nv; done 2>/dev/null &
brew update
brew upgrade
brew upgrade --cask
sudo port clean --all all
sudo port selfupdate
sudo port upgrade outdated
rustup update
#conda update --all --yes
