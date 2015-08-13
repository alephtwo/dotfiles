#! /usr/bin/env sh

ABS=$(pwd)

# zsh
ln -sf $ABS/.zshrc $HOME/.zshrc
ln -sf $ABS/zsh/themes/*.zsh-theme $HOME/.oh-my-zsh/themes/

# vim 
ln -sf $ABS/.vimrc $HOME/.vimrc
ln -sf $ABS/vim $HOME/.vim
