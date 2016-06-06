autoload colors && colors

if (( $+commands[git] ))
then
  git="$commands[git]"
else
  git="/usr/bin/git"
fi

# Information
# Username
user() {
  if [[ $USER == 'root' ]]; then
    echo -n "%{$fg_bold[red]%}"
  else
    echo -n "%{$fg_bold[yellow]%}"
  fi
  echo -n "%n%{$reset_color%}"
}

# Host
host() {
  if [[ $SSH_CONNECTION ]]; then
    echo -n "$(_user)%B@%b%{$fg_bold[green]%}%m%{$reset_color%}"
  elif [[ $LOGNAME != $USER ]] || [[ $USER == 'root' ]]; then
    echo -n "$(_user)%{$reset_color%}"
  fi
}

# Current Directory
directory_name() {
  echo -n "%{$fg_bold[cyan]%}%1/%\/%{$reset_color%}"
}

# Git
git_branch() {
  echo -n $($git symbolic-ref HEAD 2>/dev/null | awk -F/ {'print $NF'})
}

git_dirty() {
  if $(! $git status -s &> /dev/null)
  then
    echo -n ""
  else
    if [[ $($git status --porcelain) == "" ]]
    then
      echo -n " on %{$fg[green]%}$(git_prompt_info)%{$reset_color%}"
    else
      echo -n " on %{$fg[red]%}$(git_prompt_info)%{$reset_color%}"
    fi
  fi
}

git_prompt_info () {
 ref=$($git symbolic-ref HEAD 2>/dev/null) || return
 echo -n "${ref#refs/heads/}"
}

unpushed () {
  $git cherry -v @{upstream} 2>/dev/null
}

need_push () {
  if [[ $(unpushed) == "" ]]
  then
    echo -n " "
  else
    echo -n " with %{$fg[magenta]%}unpushed%{$reset_color%} "
  fi
}

export PROMPT=$'$(host)\n$(directory_name)$(git_dirty)$(need_push)\n%{$fg_bold[magenta]%}› '

set_prompt () {
  export RPROMPT="%{$fg[cyan]%}%{$reset_color%}"
}

precmd() {
  title "zsh" "%m" "%55<...<%~"
  set_prompt
}
