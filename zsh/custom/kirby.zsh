alias onoz='open -a console /Applications/MAMP/logs/php_error.log'
alias bakeme='cd ~/Sites/Clover/Donations/The-Bakery; subl .'
alias tbakeme='cd ~/Sites/Clover/Donations/The-Bakery;'
alias clodo='cd ~/Sites/Clover/Donations/Donation-Center; subl .'
alias tclodo='cd ~/Sites/Clover/Donations/Donation-Center;'
alias tclover='cd ~/Sites/Clover;'
alias photo='cd ~/Sites/Clover/Sites/Photosynthesis; git pull; subl .'
alias findme='open -a finder .'
alias codebase='cd ~/Desktop/kirby/code\ base; subl .'



alias mailbp='mail -s "BlueChex Invoice - BPBagley Swamp Wesleyan Church - December 01, 2012" "test@local.cloverpeople.com" <<EOF
Attached to this e-mail is the BlueChex Invoice for December 01, 2012.

Your account will be ACHd the Invoice Total in the next 3-5 business days

This is an automated email message.  Please do not respond.

If you have any questions, comments, etc., please direct them to:

BluePay Support
Email: support@bluepay.com
Toll-Free: 866-412-8324

Having trouble viewing the invoice?  Download Adobe Reader: http://get.adobe.com/reader
EOF'

alias mailcl='mail -s "BlueChex Invoice - CloverEmmausway - November 03, 2012" "test@local.cloverpeople.com" <<EOF
Attached to this e-mail is the BlueChex Invoice for December 01, 2012.

Your account will be ACHd the Invoice Total in the next 3-5 business days

This is an automated email message.  Please do not respond.

If you have any questions, comments, etc., please direct them to:

BluePay Support
Email: support@bluepay.com
Toll-Free: 866-412-8324

Having trouble viewing the invoice?  Download Adobe Reader: http://get.adobe.com/reader
EOF'




alias updatessh='(echo -e "Host *\n   User kirby\n\n" > ~/.ssh/config && cd ~/Sites/Clover/Server-Assets/ && git pull && cat Local\ Files/ssh.config >> ~/.ssh/config)'
phpconsole() {
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
