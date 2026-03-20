# mise ########################################################################
(( $+commands[mise] )) && export MISE_DATA_DIR="$HOME/.mise"

# oh-my-zsh configuration
export ZSH=$HOME/.oh-my-zsh
export UPDATE_ZSH_DAYS=14
ZSH_THEME="aleph"
ZSH_TMUX_AUTOSTART="true"
plugins=(
  docker
  git
  mise
)

# mise ########################################################################
(( $+commands[mise] )) && export MISE_DATA_DIR="$HOME/.mise"

# oh-my-zsh startup ###########################################################
source "${ZSH}/oh-my-zsh.sh"

# Set Path ####################################################################
# add in custom bins
path=("${HOME}/bin" $path)
# add stuff installed by pip
path+=("${HOME}/.local/bin") # PIP "Binaries"
# add psql to path
path+=("/opt/homebrew/opt/libpq/bin")
path+=("${HOME}/.local/bin")

# pnpm ########################################################################
export PNPM_HOME="${HOME}/.pnpm-global"
path+=("${PNPM_HOME}")

# Configuration ################################################################
# fix JWT display issues
export SWT_GTK3=0
export EDITOR='vim'
export TERM='screen-256color'
export SKIM_DEFAULT_COMMAND="fd --type f"
export TG_NO_DESTROY_DEPENDENCIES_CHECK="true"

# Aliases #####################################################################
(( $+commands[eza] )) && alias ls="eza"
alias xclip=pbcopy

# zscaler #####################################################################
ZSCALER_PEM="$HOME/zscaler/Zscaler Root CA.pem"
# cli
#export SSL_CERT_FILE="${ZSCALER_PEM}"
#export CURL_CA_BUNDLE="${ZSCALER_PEM}"
# node
export NODE_EXTRA_CA_CERTS="${ZSCALER_PEM}"
# python
# export POETRY_CA_FILE="${ZSCALER_PEM}"
# export REQUESTS_CA_BUNDLE="${ZSCALER_PEM}"
# elixir/erlang
export REBAR_CONFIG="$HOME/.config/rebar3/rebar.config"
export HEX_CACERTS_PATH="${ZSCALER_PEM}"
