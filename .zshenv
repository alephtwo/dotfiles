. "$HOME/.cargo/env"

# Add NVM loading to .zshenv to fix issues with non-interactive shells
# such as vscode when NOT started from the `code` command

export NVM_DIR="$HOME/.nvm"
 # This loads nvm
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
