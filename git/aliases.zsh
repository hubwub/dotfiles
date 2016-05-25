# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if (( $+commands[hub] ))
then
  alias git=$hub_path
fi

# The rest of my fun git aliases
alias gl='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin HEAD'
alias gd='git diff'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gcb='git copy-branch-name'
alias gb='git branch'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias grhh='git reset --hard HEAD'
alias gsp="git log --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --since '1 week ago' --author 'Anne' --all"

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
