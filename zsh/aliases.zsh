# Aliases

### Directories
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../..."
alias .....="cd ../...."
alias home="cd $HOME"

### VS Code shortcuts
alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"

### IP Addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"

### Tools
alias rmdir="rm -rf"
alias dotwatch="dotnet watch run"
alias dotrun="dotnet run"

# List all TCP processes
alias tcplist="lsof -i -P -n | grep LISTEN"

# Ensure python is python3
alias python="python3"

# Open simulator directly from terminal
alias simulator='open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app'

# Command history
alias h="history -10" # Last 10 commands
alias hs"history | grep" # Search history

### FUN
alias please="sudo"

# Git
alias g="git"
alias gs="git status"
alias ga="git add"
alias gaa="git add ."
alias gc="git commit -m"
alias gca="git commit -a -m"
alias gcm="git commit -m"
alias gcam="git commit -a -m"
alias gco="git checkout"
alias gcb="git checkout -b"
alias gcm="git checkout master"
alias gcl="git clone"
alias gpl="git pull"
alias gps="git push"

### Work related
alias clearpwdpolicies='sudo pwolicy -clearaccountpolicies'
