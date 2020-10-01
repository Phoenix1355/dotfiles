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
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/phoenix/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/phoenix/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/phoenix/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/phoenix/google-cloud-sdk/completion.zsh.inc'; fi
