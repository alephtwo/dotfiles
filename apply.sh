#! /usr/bin/env bash
#
cwd="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# zsh
ln -sf "${cwd}/.zshrc" "$HOME/.zshrc"
ln -sf "${cwd}/.zshenv" "$HOME/.zshenv"
ln -sf "${cwd}/zsh/themes/aleph.zsh-theme" "$HOME/.oh-my-zsh/themes/aleph.zsh-theme"
[[ ! -d "$HOME/.oh-my-zsh/plugins/zsh-syntax-highlighting" ]] && git clone "https://github.com/zsh-users/zsh-syntax-highlighting.git" "$HOME/.oh-my-zsh/plugins/zsh-syntax-highlighting"

# vim
ln -sf "${cwd}/.vimrc" "$HOME/.vimrc"

# alacritty
alacritty_config_dir="$HOME/.config/alacritty"
[[ ! -d "${alacritty_config_dir}" ]] && mkdir -p "${alacritty_config_dir}"
ln -sf "${cwd}/alacritty.toml" "${alacritty_config_dir}/alacritty.toml"
