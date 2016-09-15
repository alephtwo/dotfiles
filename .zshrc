# oh-my-zsh configuration
export ZSH=$HOME/.oh-my-zsh
export UPDATE_ZSH_DAYS=14
ZSH_THEME="aleph"
ZSH_TMUX_AUTOSTART="true"
COMPLETION_WAITING_DOTS="true"
plugins=(git colored-man tmux)
source $ZSH/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/oh-my-zsh.sh

# version managers
source $HOME/.rvm/scripts/rvm

# set path
export PATH="$PATH:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:$HOME/bin"

# custom
export EDITOR='vim'
export TERM='screen-256color'

# aliases
alias xclip="xclip -sel clip"
alias uuid="ruby -e 'require \"securerandom\"; print SecureRandom.uuid' | xclip"
alias docker-purge="docker rm $(docker ps -aq)"
alias cowf="fortune | cowsay"
alias shrug="echo '¯\_(ツ)_/¯' | xclip"
alias jshell="docker run -it java:9 jshell"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/ben/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"


[ -s "/home/ben/.jabba/jabba.sh" ] && source "/home/ben/.jabba/jabba.sh"
