# Include git bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
source $(brew --prefix)/etc/bash_completion.d/git-prompt.sh

# Colorize terminal.
export PS1="\[\033[33m\]\w\$(__git_ps1 \" (\[\033[36m\]%s\[\033[33m\])\") \$ \[\033[0m\]"
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export GREP_OPTIONS='--color=auto'

# Ignore case sensitive auto completion in bash
bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"
