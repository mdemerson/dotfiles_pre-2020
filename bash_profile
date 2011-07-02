export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

export EDITOR='mate -w'


export PATH="/usr/local/bin/:/usr/local/sbin/:/opt/local/bin/:/opt/local/sbin/:/Users/kharn/.rvm/rubies/default/bin:/Users/kharn/.rvm/gems/ruby-1.9.2-p180/bin:/Users/kharn/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin/$PATH"
export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH"

if [[ -s "$HOME/.rvm/scripts/rvm" ]] ; then source "$HOME/.rvm/scripts/rvm" ; fi

source ~/.bashrc

function gemdir {
if [[ -z "$1" ]] ; then
echo "gemdir expects a parameter, which should be a valid rvm Ruby selector"
else
rvm "$1"
cd `rvm gemdir`
pwd
fi
}
