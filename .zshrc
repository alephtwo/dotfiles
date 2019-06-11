# oh-my-zsh configuration
export ZSH=$HOME/.oh-my-zsh
export UPDATE_ZSH_DAYS=14
ZSH_THEME="aleph"
ZSH_TMUX_AUTOSTART="true"
COMPLETION_WAITING_DOTS="true"
plugins=(git tmux)
source $ZSH/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/oh-my-zsh.sh

# version managers
source $HOME/.rvm/scripts/rvm

# set path
export PATH="$PATH:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:$HOME/.yarn/bin" # Add Yarn bins
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:$HOME/.local/bin" # Python stuff

# fix JWT display issues
export SWT_GTK3=0

# custom
export EDITOR='vim'
export TERM='screen-256color'
export ORACLE_HOME="$HOME/opt/oracle"

# aliases
alias xclip="xclip -sel clip"
alias uuid="ruby -e 'require \"securerandom\"; print SecureRandom.uuid' | xclip"
alias cowf="fortune | cowsay"
alias shrug="echo '¯\_(ツ)_/¯' | xclip"

# Jabba
[ -s "$HOME/.jabba/jabba.sh" ] && source "$HOME/.jabba/jabba.sh"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
