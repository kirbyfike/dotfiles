alias onoz='open -a console /Applications/MAMP/logs/php_error.log'
alias chrome='google-chrome'
alias gv='UBUNTU_MENUPROXY= gvim'
alias dev='~/Documents/dev/code'
alias personal='~/Documents/personal/code'


# searches for a string the directory structure
ff () {
  find  | xargs grep "$1" -sl | view - -c "/$1/";
}

apache() {
    if [[ $@ == "s" || $@ == "start" ]]; then
            command sudo /Applications/MAMP/Library/bin/apachectl start;
    elif [[ $@ == "stop" ]]; then
            command sudo /Applications/MAMP/Library/bin/apachectl stop;
    elif [[ $@ == "restart" ]]; then
            command sudo /Applications/MAMP/Library/bin/apachectl restart;
    else
            command sudo /Applications/MAMP/Library/bin/apachectl restart;
    fi
}

# List hosts defined in ssh config
showhosts() {
    awk '$1 ~ /Host$/ { print $2 }' ~/.ssh/config
}
