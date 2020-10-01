#!/usr/bin/env bash

### THIS IS NOT FINISHED!!

# Bootstrapping file for setting up a development environment on your UNIX 
# system. Mainly tested for MacOS.

DOTFILES_DIR="$HOME/.dotfiles"

###################
##     SETUP     ##
###################
sudo echo "Enter your password to start bootstrapping..."

## Homebrew
/usr/bin/ruby -e "(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

## Oh-my-zsh
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

## Oh-my-zsh - Plugins
git clone https://github.com/zdharma/fast-syntax-highlighting.git \
  ~ZSH_CUSTOM/plugins/fast-syntax-highlighting

git clone https://github.com/zsh-users/zsh-autosuggestions \
  ~ZSH_CUSTOM/plugins/zsh-autosuggestions

## Oh-my-zsh - Linking config
ln -s $DOTFILES_DIR/zshrc.zsh ~/.zshrc

## Silence last login
touch ~/.hushlogin

###################
##     UTILS     ##
###################
brew install coreutils wget curl tree git openssl node gcc python pngquant rename fzf

###################
##     TOOLS     ##
###################
brew tap caskroom/cask
brew cask install java visual-studio-code google-chrome docker the-unarchiver spectacle

###################
##     FONTS     ##
###################
brew tap caskroom/fonts
brew cask install font-fira-code

###################
##    CLEANUP    ##
###################
brew cleanup
