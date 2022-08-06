export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Setting python 3.10 path
export PATH="/opt/homebrew/opt/python@3.10/bin:$PATH"
# Termianl Prompt
export PROMPT="%n in %1~ %_$ "