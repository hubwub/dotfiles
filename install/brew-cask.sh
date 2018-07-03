#!/usr/bin/env bash

# install cask and applications needed

# install cask
brew tap caskroom/cask
brew tap caskroom/fonts
brew tap caskroom/versions

# packages to install
apps=(
  android-file-transfer
  discord
  firefox
  firefoxnightly
  google-backup-and-sync
  google-chrome
  google-chrome-canary
  gpgtools
  iina
  iterm2-nightly
  keepassx
  kid3
  omnidisksweeper
  osxfuse
  postgres
  simple-comic
  slack
  spectacle
  steam
  transmission
  ubersicht
  xquartz
)

fonts=(
  font-dejavu-sans
  font-droid-sans
  font-droid-sans-mono
  font-inconsolata
  font-inconsolata-dz
  font-lato
  font-meslo-lg
  font-noto-mono
  font-noto-sans
  font-noto-serif
  font-open-sans
  font-office-code-pro
  font-roboto
  font-roboto-mono
  font-roboto-slab
)

# install casks
brew cask install "${apps[@]}"
brew cask install "${fonts[@]}"

# cleanup casks
brew cask cleanup
