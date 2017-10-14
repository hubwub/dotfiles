#!/bin/bash

# install homebrew

# prompt for administrator password

sudo -v

# check if homebrew is installed/missing

if test ! "$(which brew)"
then
  echo "installing homebrew"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew tap homebrew/bundle
brew tap homebrew/core
brew tap homebrew/services
brew tap crisidev/homebrew-chunkwm

# upgrade any existing/installed formulae
brew upgrade

apps=(
  bash
  bash-completion
  bash-git-prompt
  binutils
  chunkwm
  coreutils
  findutils
  git
  gnu-sed
  grc
  hr
  httpie
  hub
  koekeishiya/formulae/skhd
  mercurial
  neofetch
  pandoc
  reattach-to-user-namespace
  ripgrep
  ssh-copy-id
  stow
  tmux
  tree
  unar
  vim
  weechat
  wget
  wifi-password
  z
)

coding=(
  clang-format
  cscope
  gcc
  gdb
  jq
  hugo
  llvm
  lua
  mysql
  perl
  postgresql
  protobuf
  python
  python3
  rbenv
  ruby
)

media=(
  faad2
  ffmpeg
  libav
  youtube-dl
)

# install apps and whatnots
brew install "${apps[@]}"
brew install "${coding[@]}"
brew install "${media[@]}"

# remove outdated versions from the cellar
brew cleanup

# start chunkwm and khd by default
brew services start koekeishiya/formulae/skhd
brew services restart crisidev/chunkwm/chunkwm
