#! /usr/bin/env sh

pwd=$(pwd)

# zsh
ln -sf "${pwd}/.zshrc" "$HOME/.zshrc"
ln -sf "${pwd}/.zshenv" "$HOME/.zshenv"
ln -sf "${pwd}/zsh/themes/*.zsh-theme" "$HOME/.oh-my-zsh/themes/"
git clone "https://github.com/zsh-users/zsh-syntax-highlighting.git" "$HOME/.oh-my-zsh/plugins/zsh-syntax-highlighting"

# vim
ln -sf "${pwd}/.vimrc" "$HOME/.vimrc"

# alacritty
alacritty_config_dir="$HOME/.config/alacritty"
[[ ! -d "${alacritty_config_dir}" ]] && mkdir -p "${alacritty_config_dir}"
ln -sf "${pwd}/alacritty.toml" "${alacritty_config_dir}/alacritty.toml"
