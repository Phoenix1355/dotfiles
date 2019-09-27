################################
#    ZSH Configuration Core    #
################################

### Setup zgem
# Load zgem dependency manager
export ZGEM_HOME="$HOME/.zgem"
if [ ! -e "$ZGEM_HOME" ]; then git clone 'https://github.com/qoomon/zgem.git' "$ZGEM_HOME"; fi
source "$ZGEM_HOME/zgem.zsh" # && ZGEM_VERBOSE='true'

### Config
export ZCONFIG_HOME=$(dirname $(readlink $HOME/.zshrc))
export ZCONFIG_UPDATE_COMMAND='zgem upgrade'
zgem bundle "$ZCONFIG_HOME/zsh/zconfig.zsh"

### Modules
zgem bundle "$ZCONFIG_HOME/zsh/general.zsh"
zgem bundle "$ZCONFIG_HOME/zsh/aliases.zsh"
zgem bundle "$ZCONFIG_HOME/zsh/exports.zsh"

zgem bundle "$ZCONFIG_HOME/zsh/plugins.zsh"
zgem bundle "$ZCONFIG_HOME/zsh/utils.zsh"

source "$ZSH/oh-my-zsh.sh"