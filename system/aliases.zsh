# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi

# Tree file structure
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

#Generate a password
alias pswd='openssl rand -base64'
