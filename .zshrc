# oh-my-zsh configuration
export ZSH=/home/ben/.oh-my-zsh
export UPDATE_ZSH_DAYS=14
ZSH_THEME="aleph"
COMPLETION_WAITING_DOTS="true"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# version managers
source /home/ben/.rvm/scripts/rvm
[[ -s "/home/ben/.gvm/scripts/gvm" ]] && source "/home/ben/.gvm/scripts/gvm"
[[ -s "/home/ben/.gvm/bin/gvm-init.sh" ]] && source "/home/ben/.gvm/bin/gvm-init.sh"

# set path
export PATH="$PATH:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:$HOME/bin"

# custom
export EDITOR='vim'
export ORACLE_HOME=/usr/lib/oracle/12.1/client64/

# aliases
alias xclip="xclip -sel clip"

