#!/usr/bin/env bash

# install cask and applications needed

# install cask
brew tap homebrew/cask
brew tap homebrew/cask-fonts
brew tap homebrew/cask-versions

# packages to install
apps=(
  android-file-transfer
  authy
  blockblock
  caprine
  coconutbattery
  db-browser-for-sqlite
  do-not-disturb
  firefox
  firefox-nightly
  fontforge
  google-backup-and-sync
  google-chrome-canary
  gpg-suite
  iterm2-nightly
  java
  keepassxc
  keybase
  keycastr
  kid3
  kindle
  knockknock
  lulu
  netiquette
  numi
  omnidisksweeper
  osxfuse
  oversight
  pomotroid
  postgres
  postman
  ransomwhere
  rectangle
  reikey
  slack
  taskexplorer
  transmission
  visual-studio-code
  vlc
  whatsyoursign
  xquartz
)

fonts=(
  font-anka-coder
  font-fira-code
  font-fira-mono
  font-fira-sans
  font-go
  font-inconsolata
  font-iosevka
  font-lato
  font-libre-franklin
  font-lora
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
)

# install casks
brew cask install "${apps[@]}"
brew cask install "${fonts[@]}"
