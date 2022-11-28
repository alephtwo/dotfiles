# oh-my-zsh configuration
export ZSH=$HOME/.oh-my-zsh
export UPDATE_ZSH_DAYS=14
ZSH_THEME="aleph"
ZSH_TMUX_AUTOSTART="true"
plugins=(
  git
  tmux
  asdf
)
source $ZSH/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/oh-my-zsh.sh

# set path
# prepend things here to the path, they're important
export PATH="$HOME/bin:$PATH"
export PATH="$PATH:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
export PATH="$PATH:$HOME/.rvm/bin" # Ruby "Binaries"
export PATH="$PATH:$HOME/.local/bin" # PIP "Binaries"

# fix JWT display issues
export SWT_GTK3=0

# custom
export EDITOR='vim'
export TERM='screen-256color'

# aliases
alias xclip="xclip -sel clip"
alias ytdlm="youtube-dl --extract-audio --audio-format mp3"

# LaTeX
export TEXMFHOME=$HOME/.texmf

# RVM
[ -s "$HOME/.rvm/scripts/rvm" ] && source "$HOME/.rvm/scripts/rvm"

# Jabba
[ -s "$HOME/.jabba/jabba.sh" ] && source "$HOME/.jabba/jabba.sh"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
