VENV_WRAPPER=$(which virtualenvwrapper.sh)

if [ -x "$VENV_WRAPPER" ]; then source $VENV_WRAPPER; fi

WORKON_HOME="$HOME/.virtualenvs"
