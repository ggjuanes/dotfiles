# Jumps
alias cdev='cd ~/Development'

# Git
alias g="git"
alias gs="git status -sb"
alias gaa="git add -A"

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# Google Chrome
alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'
alias chrome1='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --profile-directory="Profile 1"'
alias chrome2='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --profile-directory="Profile 2"'\

alias sub='sublime'

alias o.='open .'
