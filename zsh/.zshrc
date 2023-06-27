# zsh prompt (default PS1='%n@%m %1~ %# ')
PS1='%n %1~ $ '

# nvm and npm setup
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# aliases
alias python='python3'
alias pip='pip3'