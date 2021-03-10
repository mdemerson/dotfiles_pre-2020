# Commands

alias rm='rm -i' # Idiot Guard
alias cp='cp -i' # Idiot Guard
alias mv='mv -i' # Idiot Guard
alias ps='ps aux'
alias home='cd ~'
alias pg='ps aux | grep'  #requires an argument
alias ping='ping -c 10'
alias ll="ls -al"
alias tarx='tar zxvf'
alias top='top -o cpu'


# chmod
alias mx='chmod a+x'
alias 000='chmod 000'
alias 644='chmod 644'
alias 755='chmod 755'


# Git

alias ga="git add"
alias gb="git branch"
alias gba="git branch -a"
alias gc="git commit -v"
alias gca="git commit -a"
alias gco="git checkout"
alias gd="git diff --word-diff mate"
alias gdc="git diff --cached"
alias gs="git status"
alias gps="git push"
alias gpl="git pull --rebase"
alias git-svn="git svn"
alias gsr="git svn rebase"
alias gsd="git svn dcommit"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"


# Ruby

alias be="bundle exec"
alias bec='bundle exec cucumber'
alias ber='bundle exec rake'
alias bes="bundle exec rspec"
alias rserve='rails server'
alias rc="rails console"
alias r="rails"



# Python

alias py="/usr/bin/python3"
