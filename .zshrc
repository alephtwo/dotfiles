# oh-my-zsh configuration
export ZSH=$HOME/.oh-my-zsh
export UPDATE_ZSH_DAYS=14
ZSH_THEME="aleph"
ZSH_TMUX_AUTOSTART="true"
plugins=(
  git
  mise
  tmux
)
source "${ZSH}/oh-my-zsh.sh"

# Set Path #####################################################################
# add in custom bins
path=("${HOME}/bin" $path)
# add standard paths
path+=(":/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games")
# add stuff installed by pip
path+=("${HOME}/.local/bin") # PIP "Binaries"
path+=("${HOME}/.pnpm-global")

# mise ########################################################################
(( $+commands[mise] )) && export MISE_DATA_DIR="$HOME/.mise"

# Configuration ################################################################
# fix JWT display issues
export SWT_GTK3=0
export EDITOR='vim'
export TERM='screen-256color'

# aliases
(( $+commands[eza] )) && alias ls="eza"
alias xclip="xclip -sel clip"
alias ytdlm="youtube-dl --extract-audio --audio-format mp3"

# Syntax Highlighting
source "${ZSH}/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
