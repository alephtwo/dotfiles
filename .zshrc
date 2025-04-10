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

# asdf
export ASDF_DATA_DIR="$HOME/.asdf"
if [[ -v ASDF_DATA_DIR ]]; then
  if [[ -f "${ASDF_DATA_DIR}/completions/_asdf" ]]; then
    # Set up completions
    fpath=("${ASDF_DATA_DIR}/completions" $fpath)
  else
    echo "Run `asdf completion zsh > \"$ASDF_DATA_DIR/completions/_asdf\"`"
  fi

  # Set JAVA_HOME
  [ -s "$ASDF_DATA_DIR/plugins/java/set-java-home.zsh" ] && \
    . "$ASDF_DATA_DIR/plugins/java/set-java-home.zsh"

  # Disable HTML Docs and manpages for erlang builds
  export KERL_INSTALL_HTMLDOCS=no
  export KERL_INSTALL_MANPAGES=no
fi

# LaTeX
export TEXMFHOME=$HOME/.texmf

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Set Path #####################################################################
# prefix with asdf
path=("${ASDF_DATA_DIR}/shims" $path)
# add in custom bins
path=("$HOME/bin" $path)
# add standard paths
path+=(":/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games")
# add stuff installed by pip
path+=("$PATH:$HOME/.local/bin") # PIP "Binaries"

# Configuration ################################################################
# fix JWT display issues
export SWT_GTK3=0
export EDITOR='vim'
export TERM='screen-256color'

# aliases
alias xclip="xclip -sel clip"
alias ytdlm="youtube-dl --extract-audio --audio-format mp3"

# Load shell completions
autoload -Uz compinit && compinit
