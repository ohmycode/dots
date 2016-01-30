#!/usr/bin/env bash

# this is based on Mathias Bynens' dotfile for OSX (https://mths.be/osx)
# with some custom modifications

# Ask for the administrator password upfront
sudo -v

brew cask install qlmarkdown

#quicklook enable text selection
defaults write com.apple.finder QLEnableTextSelection -bool TRUE; killall Finder
