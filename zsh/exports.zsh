## Exports

# Android SDK Environment Variables
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Dotnet SDK
# export MSBuildSDKsPath=/usr/local/share/dotnet/sdk/3.0.100/Sdks

# Golang development
export GOPATH=${HOME}/.go
export GOROOT=$(brew --prefix golang)/libexec
export PATH=$PATH:${GOPATH}/bin:${GOROOT}/bin

# Java SDKman
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/christian/.sdkman"
[[ -s "/Users/christian/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/christian/.sdkman/bin/sdkman-init.sh"

# ESP
export PATH=$HOME/.esp/xtensa-esp32-elf/bin:$PATH
export ADF_PATH=$HOME/.esp/esp-adf
export IDF_PATH=$ADF_PATH/esp-idf