# This is the custom theme template for gitprompt.sh

# These are the defaults from the "Default" theme
# You just need to override what you want to have changed
override_git_prompt_colors() {
  GIT_PROMPT_THEME_NAME="Custom"

  PathShort="\W" # Display only the current folder

  # Display the current folder first
  GIT_PROMPT_START_USER="${Green}${PathShort}"
  GIT_PROMPT_START_ROOT="${Green}${PathShort}"

  # Skip the default prefix
  GIT_PROMPT_PREFIX="${ResetColor}"

  # Use whitespace as separator
  GIT_PROMPT_SEPARATOR=" "

  # Skip remote branch
  GIT_PROMPT_REMOTE="${ResetColor}"
  GIT_PROMPT_UPSTREAM="${ResetColor}"

  # Use yellow for the current branch
  GIT_PROMPT_BRANCH="${Yellow}"

  # Use red and green for behind and ahead origin
  GIT_PROMPT_SYMBOLS_BEHIND="${Red} 🌔 "
  GIT_PROMPT_SYMBOLS_AHEAD="${Blue} 🌖 "

  # Add a few emojis to make it fun!
  GIT_PROMPT_STAGED="${Yellow} ☀️ "
  GIT_PROMPT_CONFLICTS="${Red} 💥 "
  GIT_PROMPT_CHANGED="${Yellow} 🌑 "
  GIT_PROMPT_UNTRACKED="🌟 "
  GIT_PROMPT_STASHED="${Yellow} 🌤 " # A lot nicer than the default flag
  GIT_PROMPT_CLEAN="${ResetColor} 🌕"
  GIT_PROMPT_SYMBOLS_NO_REMOTE_TRACKING=" 🔒 " # Displayed for untracked branches

  # Skip the default suffix
  GIT_PROMPT_SUFFIX=" "

  # Skip the default ending
  GIT_PROMPT_END_USER="${ResetColor}\n${Red}> \[\e[0m\]"
  GIT_PROMPT_END_ROOT="${ResetColor}\n${Red}> \[\e[0m\]"
}

reload_git_prompt_colors "Custom"
