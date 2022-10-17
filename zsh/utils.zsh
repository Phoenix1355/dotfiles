# Utils


### SSH
function ssh-key-set {
  ssh-add -D
  ssh-add "$HOME/.ssh/${1:-id_rsa}"
}

function ssh-key-info {
  ssh-keygen -l -f "$HOME/.ssh/${1:-id_rsa}"
}

function ssh-key-new {
  ssh-keygen -t rsa -b 4096 -f "$HOME/.ssh/${1:-id_rsa}" -C "${2:-$(whoami)@$(hostname)}"
}

function ssh-key-copy {
  pbcopy < "$HOME/.ssh/${1:-id_rsa}.pub"
  echo "Public '${1:-id_rsa}' key copied to clipboard"
}

### Tools
# Xcode via @orta
openx(){
  workspace="$(find . -maxdepth 2 -name '*.xcworkspace' -print -quit)"
  if test -n workspace
  then
    echo "Opening workspace"
    open "$workspace"
    return
  else
    project="$(find . -maxdepth 2 -name '*.xcodeproj' -print -quit)"
    if test -n project
    then
      echo "Opening project"
      open "$project"
      return  
    else
      echo "Nothing found"
    fi
  fi
}

# Reload .zshrc
rehash() {
    . ~/.zshrc
}

# Weather
function weather {
  curl wttr.in/${1}
}

# Random
function random {
  local charset='A-Za-z0-9'
  local others=()

  for arg in "$@"
  do
    case $arg in
      -s|--symbols)
      charset+='!#$%&()*+,-./:;<=>?@[]^_`{|}~'
      shift
      ;;
      *)
      others+=("$1")
      shift
      ;;
    esac
  done
  
  local character_count=${others[1]:-32}
  head /dev/urandom | LC_ALL=C tr -dc ${charset} | fold -w ${character_count} | head -1
}

# Colorized diff 
function diff {
  command diff $@ | sed \
    -e "s|^\(<.*\)|${fg[red]}\1$reset_color|" \
    -e "s|^\(>.*\)|${fg[green]}\1$reset_color|" \
    -e "s|^\([a-z0-9].*\)|${fg_bold[cyan]}\1$reset_color|" \
    -l
  return ${pipestatus[1]}
}

# Prints result of 10 shell loads for testing load speed
function zshspeedtest() {
  for i in $(seq 1 10); do /usr/bin/time zsh -i -c exit; done;
}

# Temporary alias for loading NVM when it's about to be used
nvm() {
  echo "🚨 NVM not loaded! Loading now..."
  unset -f nvm
  export NVM_PREFIX=$(brew --prefix nvm)
  [ -s "$NVM_PREFIX/nvm.sh" ] && . "$NVM_PREFIX/nvm.sh"
  nvm "$@"
}

# Make dir and cd into it with 'take' or just 'tk'. To be used with 'touch' for
# creating files and directories.
function take() { mkdir -p $1; cd $1; }
alias tk='take'