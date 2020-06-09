#!/usr/bin/env bash

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

# upgrade any existing/installed formulae
brew upgrade

apps=(
  bash
  bash-completion
  bash-git-prompt
  bat
  binutils
  certbot
  coreutils
  findutils
  git
  gnu-sed
  grc
  hr
  httpie
  hub
  libarchive
  mercurial
  neofetch
  neovim
  pandoc
  ranger
  reattach-to-user-namespace
  ripgrep
  ssh-copy-id
  stow
  svn
  tmux
  tree
  unar
  vim
  wget
  wifi-password
  z
)

coding=(
  clang-format
  cscope
  gcc
  gdb
  go
  jq
  llvm
  mysql
  nvm
  postgresql
  protobuf
  python
  python3
  rbenv
  ruby-build
)

media=(
  faad2
  ffmpeg
  libav
  streamlink
  youtube-dl
)

# install apps and whatnots
brew install "${apps[@]}"
brew install "${coding[@]}"
brew install "${media[@]}"

# remove outdated versions from the cellar
brew cleanup
