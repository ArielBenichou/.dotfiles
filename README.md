# .dotfiles

## Clone Repo
Download this repo in the `~/.` folder

## Bootstrap
use the `bootstrap.sh` script to create the symlinks

## Install Plugin Manager

### On Linux or Mac OS.
```sh
$ curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
### On Windows with Powershell.
```sh
$ iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni $HOME/vimfiles/autoload/plug.vim -Force
```

### Install Plugins
In vim:
Now type `:PlugInstall` to download and install the two plugins.
