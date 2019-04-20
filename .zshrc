# Created by newuser for 5.5.1

# Env Varibales
export PATH=/Users/fahadmohammad/sw/anaconda3/bin:$PATH
export MYVIMRC=/Users/fahadmohammad/.vimrc
export PS1="%m %1d$ "
# Terminal Commands Aliases
alias cd1='cd ..'

# Colors
export CLICOLOR=1

# git display information
source /Users/fahadmohammad/zsh-git-prompt/zshrc.sh
PROMPT='%F{green}%n%f@%F{cyan}%m%f %F{blue}%B%~%b%f$(git_super_status) %# '
