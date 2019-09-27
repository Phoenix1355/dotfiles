## Plugins

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  osx
  sudo
  bundler
  dotenv
  command-not-found
)

zgem bundle 'https://github.com/zsh-users/zsh-autosuggestions.git'
zgem bundle 'https://github.com/zdharma/fast-syntax-highlighting.git'