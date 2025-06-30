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
source "${ZSH}/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "${ZSH}/oh-my-zsh.sh"

# Set Path #####################################################################
# add in custom bins
path=("${HOME}/bin" $path)
# add stuff installed by pip
path+=("${HOME}/.local/bin") # PIP "Binaries"
# add psql to path
path+=("/opt/homebrew/opt/libpq/bin")

# mise ########################################################################
[[ $+commands[mise] ]] && export MISE_DATA_DIR="$HOME/.mise"

# NVM #########################################################################
if [[ $+commands[nvm] ]]; then
  export NVM_DIR="${HOME}/.nvm"
  [ -s "${NVM_DIR}/nvm.sh" ] && \. "${NVM_DIR}/nvm.sh"  # This loads nvm
  [ -s "${NVM_DIR}/bash_completion" ] && \. "${NVM_DIR}/bash_completion"  # This loads nvm bash_completion
fi

# Configuration ################################################################
# fix JWT display issues
export SWT_GTK3=0
export EDITOR='vim'
export TERM='screen-256color'

# Aliases #####################################################################
[[ $+commands[eza] ]] && alias ls="eza"
alias xclip=pbcopy
