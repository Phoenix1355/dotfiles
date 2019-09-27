# General

export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

setopt MULTIOS  # enable multi output streams e.g. < in > out1 > out2
setopt NOTIFY # Report the status of background jobs immediately, rather than waiting until just before printing a prompt.
setopt INTERACTIVE_COMMENTS # Allowes to use #-sign as comment within commandline

WORDCHARS='' # threat every special charater as word delimiter
### General Keybindings ###
# bindkey -e # -e emacs mode -v for vi mode
bindkey '^[^[[D' backward-word # alt + left
bindkey '^[^[[C' forward-word  # alt + rigth

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

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=~/.oh-my-zsh-custom

source $ZSH/oh-my-zsh.sh