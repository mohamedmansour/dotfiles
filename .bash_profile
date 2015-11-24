# the default limit on the number of simultaneous file descriptors open
ulimit -S -n 1024

# Include git bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
source $(brew --prefix)/etc/bash_completion.d/git-prompt.sh

# Colorize terminal.
text_reset='\e[0;0m'
text_green='\e[0;32m'
text_bold_green='\e[1;32m'
text_yellow='\e[0;33m'
text_cyan='\e[0;36m'

export PS1="\n\[$text_green\]\u \[$text_yellow\]\w\$(__git_ps1 \" (\[$text_cyan\]%s\[$text_yellow\])\")\n\[$text_bold_green\]\$ \[$text_reset\]"
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export GREP_OPTIONS='--color=auto'

# Ignore case sensitive auto completion in bash
bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"

# .NET Unix
[ -s "/Users/mmansour/.dnx/dnvm/dnvm.sh" ] && . "/Users/mmansour/.dnx/dnvm/dnvm.sh" # Load dnvm

# NVM
. ~/.nvm/nvm.sh

code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
