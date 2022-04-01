## Exports

# Android SDK Environment Variables
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin

# Python Binaries
export PATH=$PATH:$HOME/Library/Python/3.9/bin
export PATH=$PATH:$HOME/Library/Python/2.7/bin
export PATH=$PATH:$HOME/.local/bin

# Mono Binaries
export PATH=$PATH:/Library/Frameworks/Mono.framework/Versions/Current/bin

# Node Version Manager
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

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

# Java
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8.0_131)

# Dart
export PATH=$PATH:$HOME/.pub-cache/bin

# Fastlane
export PATH=$PATH:$HOME/.fastlane/bin
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Ruby
export PATH=$PATH:~/.rbenv/shims
