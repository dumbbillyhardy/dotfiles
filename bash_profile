alias tomcat='cd $TOMCAT_HOME'
alias tomstart='(tomcat; bin/startup.sh)'
alias tomstop='(tomcat; bin/shutdown.sh)'
alias tomrestart='(tomstop;tomstart)'
alias connectDocker='eval "$(docker-machine env default)"'

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.bash_local ]; then
    . ~/.bash_local
fi

if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

alias java6="export JAVA_HOME=$JAVA_6_HOME"
alias java7="export JAVA_HOME=$JAVA_7_HOME"
alias java8="export JAVA_HOME=$JAVA_8_HOME"


alias ws="screen python -m SimpleHTTPServer"

alias contributed="git log --author=\"Billy Hardy <hardywb@leidos.com>\" --pretty=tformat: --numstat | awk '{ add += $1; subs += $2; loc += $1 - $2 } END { printf \"added lines: %s, removed lines: %s, total lines: %s\n\", add, subs, loc }'"
alias ports="lsof -i -P | grep -i 'listen'"

alias gn="git number"
alias ga="gn add"
alias gc="gn -c"
alias gitprune="git branch --merged | grep -v \"\*\" | grep -v master | grep -v release/ | xargs -n 1 git branch -d"

export PATH="$PATH:$HOME/.fzf/bin"
export PATH="$PATH:$HOME/bin/"
export PATH="$PATH:/usr/sbin/"
