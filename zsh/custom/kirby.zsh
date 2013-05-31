alias onoz='open -a console /Applications/MAMP/logs/php_error.log'
alias chrome='google-chrome'

alias updatessh='(echo -e "Host *\n   User kirby\n\n" > ~/.ssh/config && cd ~/Sites/Clover/Server-Assets/ && git pull && cat Local\ Files/ssh.config >> ~/.ssh/config)'
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
