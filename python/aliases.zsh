alias py="python"
alias py3="python3"
alias ipy="ipython"
alias pyserv="python -m SimpleHTTPServer"
alias pyserv3="python3 -m http.server"
alias pt="py.test"
alias nt="nosetests"
alias mn="python manage.py"
alias pipup="pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs pip install -U"
alias pip3up="pip3 freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs pip3 install -U"
alias prettyjson="python -m json.tool"

# Remove python compiled byte-code in either current directory or in a
# list of specified directories
function pyclean() {
    ZSH_PYCLEAN_PLACES=${*:-'.'}
    find ${ZSH_PYCLEAN_PLACES} -type f -name "*.py[co]" -delete
    find ${ZSH_PYCLEAN_PLACES} -type d -name "__pycache__" -delete
}
