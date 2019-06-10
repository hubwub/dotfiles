#!/usr/bin/env bash

# install cask and applications needed

# install cask
brew tap caskroom/cask
brew tap caskroom/fonts
brew tap caskroom/versions

# packages to install
apps=(
  android-file-transfer
  authy
  blockblock
  caprine
  firefox
  firefoxnightly
  fontforge
  google-backup-and-sync
  google-chrome
  google-chrome-canary
  gpg-suite
  iina
  iterm2-nightly
  java
  keepassxc
  keybase
  kid3
  kindle
  kitty
  lulu
  numi
  omnidisksweeper
  osxfuse
  oversight
  postgres
  postman
  r-app
  simple-comic
  soundflower
  spectacle
  transmission
  ubersicht
  visual-studio-code
  vlc
  xquartz
)

fonts=(
  font-anka-coder
  font-dejavu-sans
  font-droid-sans
  font-droid-sans-mono
  font-fira-code
  font-fira-mono
  font-fira-sans
  font-go
  font-go-mono
  font-inconsolata
  font-inconsolata-dz
  font-iosevka
  font-lato
  font-libre-franklin
  font-lora
  font-m-plus
  font-merriweather
  font-merriweather-sans
  font-meslo-lg
  font-mononoki
  font-montserrat
  font-noto-sans
  font-noto-sans-mono
  font-noto-serif
  font-nunito
  font-office-code-pro
  font-open-sans
  font-oswald
  font-playfair-display
  font-playfair-display-sc
  font-pt-sans
  font-raleway
  font-roboto
  font-roboto-condensed
  font-roboto-mono
  font-roboto-slab
  font-source-sans-pro
  font-yanone-kaffeesatz
)

# install casks
brew cask install "${apps[@]}"
brew cask install "${fonts[@]}"

# cleanup casks
brew cask cleanup
