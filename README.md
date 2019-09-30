# Dotfiles
A universal dotfile configuration repository holding all my special dotfiles

## Usage

```sh
# Clone project into dotfiles directory
git clone https://github.com/Phoenix1355/dotfiles.git ~/.dotfiles

# Symlink files (i.e. zsh)
ln -s ~/.dotfiles/zshrc.zsh ~/.zshrc
```

## Configs
### Oh-my-zsh config

Plugins:

* [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
* [fast-syntax-highlighting](https://github.com/zdharma/fast-syntax-highlighting)

Aliases:

* `..` - Go to parent directory (`cd ../`)
* `...` - Go up 2 directories (`cd ../../`)
* `ip` - Prints devices ip address
* `iplocal` - Prints the local ip address
* `rmdir <dir>` - Removes given directory and all it's content (`rm -rf <dir>`)

Functions:

* `openx` - Opens Xcode workspace or project in current directory
* `weather` - Prints todays weather using [wttr.in](wttr.in)
* `random [<length>]` - Generates a random character set. Useful for generating passwords
* `diff <file1> <file2>` - Prints the difference between the to given files
* `mkd <dir>` - Create a directory and `cd` into it
* `zshspeedtest` - Test the loading speed of your zsh config by loading the shell 10 times
* _More to come..._
