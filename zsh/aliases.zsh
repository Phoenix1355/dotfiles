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

### FUN
alias please="sudo"