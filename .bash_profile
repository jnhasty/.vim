alias ls='ls -aFhlG'
alias ll='ls -l'
alias vim='mvim'
alias search=grep
alias ..='cd ..'
alias ...='cd ../..'
alias desktop='cd ~/Desktop'
alias downloads='cd ~/Downloads'
alias sites='cd ~/Sites'
alias gitdir='cd ~/git'
alias src='cd ~/src'
alias rhizomedotorg='cd ~/git/rhizomedotorg'
alias localcolor='cd ~/git/localcolor-env'
alias river='cd ~/git/riverthenet-env'
alias syncdb='python manage.py syncdb'
alias runserver='python manage.py runserver'
alias activate='source bin/activate'
alias vactivate='source venv/bin/activate'
#PS1="\e[0;32m\]\u@\h \w \$ \e[1;36m\]\$ "

red=$(tput setaf 1)
green=$(tput setaf 2)
darkgreen=$(tput setaf 2)
blue=$(tput setaf 4)
bold=$(tput bold)
reset=$(tput sgr0)
lightblue=$(tput bold ; tput setaf 4)
lightcyann=$(tput bold ; tput setaf 6)
PS1='\[$darkgreen$bold\]\u@\h:\[$lightcyann\]\w\[$lightcyann\]\$ '


function mvim { /Applications/MacVim.app/Contents/MacOS/Vim -g $*; }

#mysql
PATH=$PATH:/usr/bin/:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH

#postgre
export PATH=/usr/local/pgsql/bin:$PATH
export PGDATA=/usr/local/pgsql/data

# MacPorts Installer addition on 2009-09-25_at_13:48:45: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:/usr/local/bin/:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


#postgis frameworks
export PATH=/Library/Frameworks/UnixImageIO.framework/Programs:$PATH
export PATH=/Library/Frameworks/PROJ.framework/Programs:$PATH
export PATH=/Library/Frameworks/GEOS.framework/Programs:$PATH
export PATH=/Library/Frameworks/SQLite3.framework/Programs:$PATH
export PATH=/Library/Frameworks/GDAL.framework/Programs:$PATH

#lessc
export PATH=~/.npm/less/1.2.2/package/bin/lessc:$PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*