# .dotfiles

## Clone Repo
Download this repo in the `~/.` folder

## Stow
use the `setup-stow-folders` to stow the dotfiles to the home directory.

## VIM - Install Plugin Manager

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
### Install Packages
```
cmatrix
docker?
git?
fdfind
figlet
fzf
kubectl + autocomplete
krew + kubectx kubens
build neovim
node / n / nvm / fnm
ripgrep
tldr
tmux
zsh
oh-my-zsh
difftastic
jq
stow
tree
```

### Install Plugins
In vim:
Now type `:PlugInstall` to download and install the two plugins.

# TODO
- [ ] start a new
- [ ] use stow to stow the folder to the user root path (e.g. git -> ~)
- [ ] add ansible that install all dependencies: tmux, fdfind, ripgrep, fzf, difftastic, stow, cmatrix ...
- [ ] add ansible that install oh my zsh
- [ ] add ansible that build nvim
- [x] add a git folder with gitconfig
- [x] add zsh folder with profile and functions
- [x] add .local/scripts folder with custom scripts like tmux-sessionizer

# Set up new machine
- [ ] clone this repo
- [ ] install ansible
- [ ] run ansible playbook to install and build dependencies
- [ ] stow folders to user home (git, zsh, scripts)
- [ ] git clone init.nvim repo & install packer
