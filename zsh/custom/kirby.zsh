alias onoz='open -a console /Applications/MAMP/logs/php_error.log'
alias bakeme='cd ~/Sites/Clover/Donations/The-Bakery; subl .'
alias tbakeme='cd ~/Sites/Clover/Donations/The-Bakery;'
alias clodo='cd ~/Sites/Clover/Donations/Donation-Center; subl .'
alias tclodo='cd ~/Sites/Clover/Donations/Donation-Center;'
alias tclover='cd ~/Sites/Clover;'
alias photo='cd ~/Sites/Clover/Sites/Photosynthesis; git pull; subl .'
alias findme='open -a finder .'
alias codebase='cd ~/Desktop/kirby/code\ base; subl .'
alias tscrape='cd ~/Desktop/kirby/code\ base/rails/apps/site_scraper; subl .'
alias testga='cd ~/Desktop/kirby/code\ base/rails/apps/test_ga; subl .'



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
