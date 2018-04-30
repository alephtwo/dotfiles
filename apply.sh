#! /usr/bin/env sh

ABS=$(pwd)

# zsh
ln -sf $ABS/.zshrc $HOME/.zshrc
ln -sf $ABS/zsh/themes/*.zsh-theme $HOME/.oh-my-zsh/themes/
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/plugins/zsh-syntax-highlighting

# vim
ln -sf $ABS/.vimrc $HOME/.vimrc

# hg
ln -sf $ABS/.hgrc $HOME/.hgrc
ln -sf $ABS/hgext $HOME/.hgext
hg clone http://bitbucket.org/sjl/hg-prompt/ $HOME/.hgext/hg-prompt
