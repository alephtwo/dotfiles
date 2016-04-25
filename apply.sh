#! /usr/bin/env sh

ABS=$(pwd)

# zsh
# git clone git@github.com:zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/plugins/zsh-syntax-highlighting
ln -sf $ABS/.zshrc $HOME/.zshrc
ln -sf $ABS/zsh/themes/*.zsh-theme $HOME/.oh-my-zsh/themes/

# vim 
ln -sf $ABS/.vimrc $HOME/.vimrc

# irb
ln -sf $ABS/.irbrc $HOME/.irbrc
