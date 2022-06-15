#!/usr/bin/env zsh

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

mkdir -p ./.vim ./.vim/autoload ./.vim/backup ./.vim/colors ./.vim/plugged

curl -fLo ./.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -s ~/.dotfiles/.vimrc ~/.vimrc
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/.vim ~/.vim

mkdir -p ~/.local/bin/
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/tmux/.tmux.conf ~/.tmux.conf
