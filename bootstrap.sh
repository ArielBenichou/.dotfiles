#!/usr/bin/env zsh

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

mkdir -p ./.vim ./.vim/autoload ./.vim/backup ./.vim/colors ./.vim/plugged

curl -fLo ./.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

stow ./vim
stow ./git
stow ./zsh
stow ./bin
stow ./tmux
