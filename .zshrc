# oh-my-zsh configuration
export ZSH=$HOME/.oh-my-zsh
export UPDATE_ZSH_DAYS=14
ZSH_THEME="aleph"
COMPLETION_WAITING_DOTS="true"
plugins=(git colored-man)
source $ZSH/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/oh-my-zsh.sh

# version managers
source $HOME/.rvm/scripts/rvm
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"
[[ -s "$HOME/.gvm/bin/gvm-init.sh" ]] && source "$HOME/.gvm/bin/gvm-init.sh"

# set path
export PATH="$PATH:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:$HOME/bin"

# custom
export EDITOR='vim'
export ORACLE_HOME=/usr/lib/oracle/12.1/client64/
export TERM='xterm-256color'

# aliases
alias xclip="xclip -sel clip"
alias uuid="ruby -e 'require \"securerandom\"; print SecureRandom.uuid' | xclip"
