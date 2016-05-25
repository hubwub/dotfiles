#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install caskroom
brew install caskroom/cask/brew-cask
brew tap caskroom/versions

# Install apps
# Development
brew cask install atom cyberduck iterm2-nightly postgres vagrant vagrant-manager
virtualbox xquartz

# Browsers
brew cask install firefox firefoxdeveloperdition flash-player google-chrome
google-drive google-hangouts

# Productivity
brew cask install skype slack tomighty

# Entertainment
brew cask install adobe-creative-cloud steam vlc

# Mac / OSX Utilities
brew cask install android-file-transfer bettertouchtool gpgtools keepassx
menumeters omnidisksweeper onyx smcfancontrol 

exit 0
