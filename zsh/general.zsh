# General

# Setup PATH
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

setopt MULTIOS  # enable multi output streams e.g. < in > out1 > out2
setopt NOTIFY # Report the status of background jobs immediately, rather than waiting until just before printing a prompt.
setopt INTERACTIVE_COMMENTS # Allowes to use #-sign as comment within commandline

WORDCHARS='' # threat every special charater as word delimiter
### General Keybindings ###
# bindkey -e # -e emacs mode -v for vi mode
bindkey '^[^[[D' backward-word # alt + left
bindkey '^[^[[C' forward-word  # alt + rigth
bindkey '^[begin' beginning-of-line
bindkey '^[end' end-of-line

# Enable math functions e.g. (( f = sin(0.3) ))
zmodload zsh/mathfunc

### ZSH Config
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

DEFAULT_USER=`whoami`

# rbenv setup
eval "$(rbenv init -)"

source $ZSH/oh-my-zsh.sh