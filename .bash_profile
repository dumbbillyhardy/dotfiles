export EDITOR=/usr/local/bin/vim
#eval "$(grunt --completion=bash)"

alias java7="export JAVA_HOME=$JAVA_7_HOME"
alias java8="export JAVA_HOME=$JAVA_8_HOME"

#shopt -s globstar
#shopt -s autocd
#alias tomcat='cd ~/apache-tomcat-7.0.64'
alias tomcat='cd /Library/Tomcat'
alias tomstart='(tomcat; bin/startup.sh)'
alias tomstop='(tomcat; bin/shutdown.sh)'
alias tomrestart='(tomstop;tomstart)'
alias connectDocker='eval "$(docker-machine env default)"'

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi


alias ws="screen python -m SimpleHTTPServer"
alias core="(cd ~/dev/dc2f-js-core/src; screen -dmS leaf-js-core polyserve -p 8079 -H 0.0.0.0)"
alias coreui="(cd ~/dev/dc2f-js-core-ui; screen -dmS leaf-core-ui polyserve -p 8081 -H 0.0.0.0)"
alias vis="(cd ~/dev/dc2f-js-vis; screen -dmS leaf-vis polyserve -p 8082 -H 0.0.0.0)"
alias layout="(cd ~/dev/dc2f-js-layout; screen -dmS leaf-layout polyserve -p 8083 -H 0.0.0.0)"
alias charts="(cd ~/dev/dc2f-js-charts; screen -dmS leaf-charts polyserve -p 8084 -H 0.0.0.0)"

alias contributed="git log --author=\"Billy Hardy <hardywb@leidos.com>\" --pretty=tformat: --numstat | awk '{ add += $1; subs += $2; loc += $1 - $2 } END { printf \"added lines: %s, removed lines: %s, total lines: %s\n\", add, subs, loc }'"
alias ports="lsof -i -P | grep -i 'listen'"

alias gn="git number"
alias ga="gn add"
alias gc="gn -c"
alias gitprune="git branch --merged | grep -v \"\*\" | grep -v master | grep -v release/ | xargs -n 1 git branch -d"
#alias gd="gn diff --color-words='\\w+|. '"

export PATH="$PATH:$HOME/.fzf/bin"
