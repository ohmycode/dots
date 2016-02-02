#!/usr/bin/env bash

# !!! IMPORTANT
# Please install Xcode before running this, I found no way to install Xcode over the CLI
# !!! IMPORTANT

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Xcode CLI tools
xcode-select --install

# install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install YADR - https://github.com/skwp/dotfiles
sh -c "`curl -fsSL https://raw.githubusercontent.com/skwp/dotfiles/master/install.sh`"

# CLI general tools
brew install \
mc \
tree \
node \
ssh-copy-id \
wget \
jpegoptim \
pngcrush \
colordiff \
imagemagick \
graphicsmagick \
ack \
caskroom/cask/brew-cask

# add support for fonts
brew tap caskroom/fonts

#add dev/beta versions
brew tap caskroom/versions

#install mac apps & fonts
brew cask install \
font-source-code-pro \
sublime-text \
google-chrome \
firefox \
iterm2 \
sequel-pro \
virtualbox \
ghostlab \
imageoptim \
imagealpha \
xquartz \
handbrake \
vlc \
vlc-webplugin \
little-snitch \
transmission \
keka \
filezilla \ 
dropbox \
spectacle \
cd-to \
spotify

# install Finder Preview (quicklook) enhancements
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package

#quicklook enable text selection
defaults write com.apple.finder QLEnableTextSelection -bool TRUE; killall Finder


# Web dev
brew install \
mariadb 

npm install -g \
bower \
gulp

# install meteor
curl https://install.meteor.com/ | sh

# Configuration for the installed Apps ---------------------

# Sublime Text
git clone git://github.com/buymeasoda/soda-theme.git \
~/Library/Application\ Support/Sublime\ Text\ 3/Packages/Theme\ -\ Soda

git clone git://github.com/chriskempson/textmate-tomorrow-theme.git \
~/Library/Application\ Support/Sublime\ Text\ 3/Packages/Color\ Scheme\ -\ Tomorrow

#Xcode
mkdir -p ~/Library/Developer/Xcode/UserData/FontAndColorThemes && \
wget https://raw.githubusercontent.com/chriskempson/tomorrow-theme/master/Xcode%204/Tomorrow%20Night%20Eighties.dvtcolortheme -O \
~/Library/Developer/Xcode/UserData/FontAndColorThemes/Tomorrow\ Night\ Eighties.dvtcolortheme

# LAMP Stack config

# Maria DB, change path to current brewed version
cd /usr/local/Cellar/mariadb/10.1.9
ln -sfv /usr/local/opt/mariadb/*.plist ~/Library/LaunchAgents\n> mysql_install_db
ln -sfv /usr/local/opt/mariadb/*.plist ~/Library/LaunchAgents\n
mysql_install_db
mysql.server start
mysql_secure_installation
cd
touch .my.cnf
