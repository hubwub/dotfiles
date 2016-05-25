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

# Taps
brew tap homebrew/versions
brew install brew-cask

# Brews
# Utilities
brew install ack coreutils findutilsi gettext gmp gnutls grc isl libffi
libgcrypt liggpg-error libksba libmpc libtasn1 libtool libyaml mpfr nettle
openssl pcre pkg-config readline spark ssh-copy-id xz

# Shell
brew install bash bash-completion zsh zsh-completions

# Languages
brew install go python python3 rbenv ruby ruby-build

# Tools
brew install automake cmake boost boot2docker clang-format docker gcc gdbm llvm
llvm36 mysql postresql protobuf250 sqlite

# Programs
brew install weechat

exit 0
