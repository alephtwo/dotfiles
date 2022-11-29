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

# asdf
if [[ -v ASDF_DIR ]]; then
  # Set JAVA_HOME
  [ -s "$ASDF_DIR/plugins/java/set-java-home.zsh" ] && \
    . "$ASDF_DIR/plugins/java/set-java-home.zsh"
  # Disable HTML Docs and manpages for erlang builds
  export KERL_INSTALL_HTMLDOCS=no
  export KERL_INSTALL_MANPAGES=no
fi

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
