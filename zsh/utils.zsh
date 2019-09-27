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
  if test -n "$(find . -maxdepth 1 -name '*.xcworkspace' -print -quit)"
  then
    echo "Opening workspace"
    open *.xcworkspace
    return
  else
    if test -n "$(find . -maxdepth 1 -name '*.xcodeproj' -print -quit)"
    then
      echo "Opening project"
      open *.xcodeproj
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
  local character_count=${1:-32}
  local character_set=${2:-'A-Za-z0-9!#$%&()*+,-./:;<=>?@[]^_`{|}~'}
  head /dev/urandom | LC_ALL=C tr -dc ${character_set} | fold -w ${character_count} | head -1
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