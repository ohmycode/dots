#!/usr/bin/env bash

# TO-DO: search for brew packages or write install scripts for all Apps

# Ask for the administrator password upfront
sudo -v

# - Xcode

# Xcode CLI tools
xcode-select --install

# - Dropbox
# - Firefox
# - Google Chrome
# - Filezilla
# - iTerm 2
# - Keka
# - LittleSnitch
# - Sequel Pro
# - Sublime Text
# - VLC
# - Cdto

# Install YADR - https://github.com/skwp/dotfiles
sh -c "`curl -fsSL https://raw.githubusercontent.com/skwp/dotfiles/master/install.sh`"
