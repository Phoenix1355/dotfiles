## Exports

# Android SDK Environment Variables
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Java SDKman
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/christian/.sdkman"
[[ -s "/Users/christian/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/christian/.sdkman/bin/sdkman-init.sh"