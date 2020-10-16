# Utils


### SSH
function ssh-key-set {
  ssh-add -D
  ssh-add "$HOME/.ssh/${1:-id_rsa}"
}

function ssh-key-info {
  ssh-keygen -l -f "$HOME/.ssh/${1:-id_rsa}"
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

# Create directory and enter
function mkd() {
  mkdir -p "$@" && cd "$_";
}

# Prints result of 10 shell loads for testing load speed
function zshspeedtest() {
  for i in $(seq 1 10); do /usr/bin/time zsh -i -c exit; done;
}