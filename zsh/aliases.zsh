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

function structurizr() {
  WORKSPACE_ID=58475
  API_KEY=ae2148b9-6fd5-4571-a81b-d1f04a2ed2d0
  API_SECRET=d06692eb-6de7-488d-bf88-91143b06d619

  /usr/local/bin/structurizr/structurizr.sh $1 -id $WORKSPACE_ID -key $API_KEY -secret $API_SECRET -workspace $2
}