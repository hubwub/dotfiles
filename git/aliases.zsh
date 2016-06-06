# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if (( $+commands[hub] ))
then
  alias git=$hub_path
fi

# The rest of my fun git aliases
alias ga='git add'
alias gp='git push'
alias gl='git log'
alias gpp='git pull --prune'
alias gpu="git pull"
alias gsp="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --since '1 week ago' --author 'Anne' --all"
alias gpl="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gf="git reflog"
alias gd='git diff'
alias gc='git commit'
alias gca='git commit -a'
alias gcam='git commit -am'
alias gb='git branch'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias grsh='git reset --soft HEAD'
alias grhh='git reset --hard HEAD'

# upstream fetch of forked repos
guf(){
  for i in $(find . -maxdepth 1 -type d -not -name .)
  do
      if [ -d "$i/.git" ]; then
          cd "$i"
          if git remote | grep 'upstream' > /dev/null; then
              echo "fetching upstream for ${PWD##*/} ..."
              git fetch upstream
              # Assume branches are called 'master'.
              git diff --shortstat master upstream/master
          fi
          cd ..
      fi
  done
}
