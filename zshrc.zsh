################################
#    ZSH Configuration Core    #
################################

# Profiler
# zmodload zsh/zprof

### Initial
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

### Load modules
ZSH_CONFIG_DIR="$(dirname $(readlink $HOME/.zshrc))/zsh"

[ -z "$PS1" ] && return

. $ZSH_CONFIG_DIR/general.zsh
. $ZSH_CONFIG_DIR/aliases.zsh
. $ZSH_CONFIG_DIR/exports.zsh

. $ZSH_CONFIG_DIR/plugins.zsh
. $ZSH_CONFIG_DIR/utils.zsh

### Final source
source "$ZSH/oh-my-zsh.sh"

# End profiler
# zprof