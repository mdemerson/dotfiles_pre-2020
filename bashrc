source ~/.bash_aliases
source ~/.git-completion.bash #Git tab completion

if [ "$PS1" ]; then

  black='\e[0;30m'
  red='\[\e[31m\]'
  green='\[\e[32m\]'
  brown='\[\e[33m\]'
  blue='\e[0;34m'
  purple='\e[0;35m'
  cyan='\[\e[36m\]'
  grey='\[\e[0;37m\]'

  darkgray='\e[1;30m'
  lightred='\e[1;31m'
  lightgreen='\e[1;32m'
  yellow='\e[1;33m'
  lightblue='\e[1;34m'
  lightpurple='\e[1;35m'
  lightcyan='\e[1;36m'
  white='\e[1;37m'

  reset_color='\[\e[0m\]'
  set_title='\[\e]0;\]\H:\w\[\007\]'

  prompt="$green$"

  if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
  fi

  if test `id -un` = root; then
    prompt="$lightred#"
  fi	

  function prompt-gem-path() {
  ruby_version=`echo $GEM_HOME | sed -n /@/p | sed -e 's/\/.*\///'`
    if test -n "$ruby_version"; then
      echo "$ruby_version"
    fi
  }
  function prompt-git-user() {
    git_user=`git config --get user.name`
    if test -n "$git_user" && test -n "`prompt-git-branch`"; then
      echo " '$git_user'"
    fi
  }
  
  function prompt-git-branch() {
    git_branch=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/^* //'`
    if test -n "$git_branch"; then
      echo " [$git_branch]"
    fi
  }

	PS1="${set_title}
${green}(\t - \h) ${brown}\w${grey}\$(prompt-git-branch)${cyan}\$(prompt-git-user) ${yellow}\$(prompt-gem-path)
${prompt} ${reset_color}"

fi

