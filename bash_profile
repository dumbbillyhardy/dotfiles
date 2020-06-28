export EDITOR=/usr/local/bin/vim

alias tomcat='cd $TOMCAT_HOME'
alias tomstart='(tomcat; bin/startup.sh)'
alias tomstop='(tomcat; bin/shutdown.sh; ps aux| grep tomcat)'
#alias tomkill='ps aux|grep tomcat|awk -F" " "{printf($2) }" '
alias tomrestart='(tomstop;tomstart;)'
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

alias java8="export JAVA_HOME=$JAVA_8_HOME"
alias java9="export JAVA_HOME=$JAVA_9_HOME"
java8

alias ws="screen python -m SimpleHTTPServer"

alias contributed="git log --author=\"Billy Hardy <hardywb@leidos.com>\" --pretty=tformat: --numstat | awk '{ add += $1; subs += $2; loc += $1 - $2 } END { printf \"added lines: %s, removed lines: %s, total lines: %s\n\", add, subs, loc }'"
alias ports="lsof -i -P | grep -i 'listen'"

alias gn="git number"
alias ga="gn add"
alias gc="gn -c"
alias gvim="gn -c vim"
alias gitprune="git branch --merged | grep -v \"\*\" | grep -v master | grep -v release/ | xargs -n 1 git branch -d"

export PATH="$PATH:$HOME/.fzf/bin"
export PATH="$PATH:$HOME/bin/"
export PATH="$PATH:$HOME/.all-bin/"
export PATH="$PATH:/usr/sbin/"
export PATH="$PATH:$ECLIPSE_HOME"
export FZF_DEFAULT_COMMAND="find -L * -path '*/\.*' -prune -o -type f -print -o -type l -print 2> /dev/null"
export FZF_DEFAULT_COMMAND='ag -g ""'

export PATH="$HOME/.cargo/bin:$PATH"
