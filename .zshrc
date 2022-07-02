autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats 'on %b'

setopt PROMPT_SUBST
PROMPT='%n in ${PWD/#$HOME/~} $ '
RPROMPT=\$vcs_info_msg_0_