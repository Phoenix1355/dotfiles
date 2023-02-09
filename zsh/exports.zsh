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

# Golang development
export GOPATH=$HOME/.go
export PATH=$PATH:${GOPATH}/bin:${GOROOT}/bin

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

# Monogame
export MGFXC_WINE_PATH=$HOME/.winemonogame
