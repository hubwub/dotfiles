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

# Tap
brew tap caskroom/fonts

# Fonts
brew cask install font-anonymous-pro font-dejavu-sans font-droid-sans
brew cask install font-droid-sans-mono font-fira-sans font-fira-mono font-inconsolata font-lato
brew cask install font-meslo-lg font-open-sans font-roboto font-roboto-mono font-roboto-slab
brew cask install font-source-sans-pro font-source-code-pro font-ubuntu

exit 0
