#! /usr/bin/env sh

ABS=$(pwd)

# zsh
ln -sf $ABS/.zshrc $HOME/.zshrc
ln -sf $ABS/.zshenv $HOME/.zshenv
ln -sf $ABS/zsh/themes/*.zsh-theme $HOME/.oh-my-zsh/themes/
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/plugins/zsh-syntax-highlighting

# vim
ln -sf $ABS/.vimrc $HOME/.vimrc
