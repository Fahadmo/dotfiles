# Env Varibales
export MYVIMRC=$HOME/.vimrc

# Colors
export CLICOLOR=1

# git display information
# Load version control information
autoload -Uz vcs_info
zstyle ':vcs_info:git*' formats "%{$fg[blue]%}%b %m%u%c"
#zstyle ':vcs_info:*' enable git
precmd() { vcs_info }
setopt prompt_subst

export PS1='[%F{green}%n%f@%F{cyan}%m%f %F{blue}%B%~%b%f] ${vcs_info_msg_0_}%# '
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"


# Macvim
alias vim='mvim -v'

# Terminal Commands Aliases
alias cd1='cd ..'
alias cd2='cd ../..'
alias ll='ls -l'
alias zedit='vim $HOME/.zshrc'
alias zsave='source $HOME/.zshrc'
alias vedit='vim $HOME/.vimrc'

# Git Aliases
alias gco='git checkout'
alias gcob='git checkout -b'
alias gc='git commit'
alias gca='git commit --amend'
alias gp='git push'
alias gpr='git push --rebase'
alias gs='git status'
alias ga='git add'
alias gaa='git add -A'
