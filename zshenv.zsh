### Load modules
ZSH_CONFIG_DIR="$(dirname $(readlink $HOME/.zshrc))/zsh"

[ -z "$PS1" ] && return

. $ZSH_CONFIG_DIR/plugins.zsh
. $ZSH_CONFIG_DIR/utils.zsh