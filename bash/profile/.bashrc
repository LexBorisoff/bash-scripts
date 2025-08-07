# ~/.bashrc

PROMPT_COMMAND='history -a'
. /etc/profile.d/aliases.sh

# custom shell scripts
test -f ~/.terminal/shell-scripts/source.sh && . ~/.terminal/shell-scripts/source.sh
