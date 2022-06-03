#!/usr/bin/env zsh

mkdir -p ./.vim ./.vim/autoload ./.vim/backup ./.vim/colors ./.vim/plugged

curl -fLo ./.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 

ln -s ~/.dotfiles/.vimrc ~/.vimrc
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ln -s ~/.dotfiles/.vim ~/.vim
