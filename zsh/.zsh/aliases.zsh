# Tell grep to highlight matches
export GREP_OPTIONS='--color=auto'

# Adding grc aliases
alias colourify="grc -es --colour=auto"
alias configure='colourify ./configure'
alias diff='grc -es --colour=auto diff'
alias make='grc -es --colour=auto make'
alias gcc='grc -es --colour=auto gcc'
alias g++='grc -es --colour=auto g++'
alias as='grc -es --colour=auto as'
alias gas='grc -es --colour=auto gas'
alias ld='grc -es --colour=auto ld'
alias netstat='grc -es --colour=auto netstat'
alias ping='grc -es --colour=auto ping'
alias traceroute='grc -es --colour=auto traceroute'
alias cat="grc -es --colour=auto cat"
alias head="grc -es --colour=auto head"
alias tail="grc -es --colour=auto tail"