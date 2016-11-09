
#===============================================================================
# History Configuration
#-------------------------------------------------------------------------------
shopt -s histappend
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
export HISTSIZE=1000
export HISTFILESIZE=20000
export HISTTIMEFORMAT="[%F %T]"
#===============================================================================

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

blue="\[\033[34m\]"
yellow="\[\033[33m\]"
green="\[\033[32m\]"
nocolor="\[\033[0m\]"

PS1="
┌ ${yellow}\h${nocolor} [${green}\w${nocolor}]
└──> "

export TERM='rxvt-256color'
export EDITOR='vim'

# Aliases - File Management
alias ..='cd ..'
alias ...='cd ../..'
alias c='clear'
alias ls='ls --color=auto'
alias l='ls -oh'
alias rm='rm -I'
alias grep='grep -i'

# Aliases - Git
alias g='/usr/bin/git status'
alias gu='/usr/bin/git pull'
alias gp='/usr/bin/git push'
alias ga='/usr/bin/git add'
alias gd='/usr/bin/git diff'
alias gb='/usr/bin/git branch'
alias gba='/usr/bin/git branch -a'
alias gc='/usr/bin/git commit'
alias gca='/usr/bin/git commit -a'
alias gco='/usr/bin/git checkout'
alias gm="/usr/bin/git merge --no-ff"
alias gff="/usr/bin/git merge --ff-only"
alias gl="/usr/bin/git log --date-order --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
alias gla="/usr/bin/git log --date-order --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative --all"
alias gll="/usr/bin/git log --date-order --graph --oneline"

# Aliases - Other
alias destroy="shred -f -n 10 --random-source=/dev/urandom -u -v -z"
alias vim='vim -O'
