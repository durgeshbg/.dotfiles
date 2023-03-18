autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' formats '%b %m%u%c %a'

setopt PROMPT_SUBST
PROMPT='%n [%~] $ '
RPROMPT='${vcs_info_msg_0_}'

# nvm and npm setup
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Aliases
alias python='python3'
alias pip='pip3'
alias sz='source ~/.zshrc;echo ".zshrc file loaded..."'
alias g='git'
