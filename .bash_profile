export EDITOR=/usr/local/bin/vim
#eval "$(grunt --completion=bash)"
export JUNIT=/Applications/eclipse/plugins/org.junit_4.11.0.v201303080030/junit.jar
export JAVA_6_HOME=/System/Library/Frameworks/JavaVM.framework/Home
export JAVA_7_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home
export JAVA_8_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_101.jdk/Contents/Home
export JAVA_HOME=$JAVA_7_HOME
export WEBSTORM_HOME=/Applications/WebStorm.app/Contents/bin


alias java6="export JAVA_HOME=$JAVA_6_HOME"
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

#if [ -f ~/.git-completion.bash ]; then
#    . ~/.git-completion.bash
#fi

#eval "$(rbenv init -)"

export PATH=/Users/billyhardy/.rvm/gems/jruby-1.7.19/bin:/Users/billyhardy/.rvm/gems/jruby-1.7.19@global/bin:/Users/billyhardy/.rvm/rubies/jruby-1.7.19/bin:/Users/billyhardy/.rvm/bin:/Users/billyhardy/.rbenv/shims:/Users/billyhardy/.rbenv/shims:/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/lib/node_modules/web-component-tester/bin:/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home/bin:/Users/billyhardy/.rvm/rubies/jruby-1.7.19/bin/jruby/bin

#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

alias ws="screen python -m SimpleHTTPServer"
alias core="(cd ~/dev/dc2f-js-core/src; screen -dmS leaf-js-core polyserve -p 8079 -H 0.0.0.0)"
alias coreui="(cd ~/dev/dc2f-js-core-ui; screen -dmS leaf-core-ui polyserve -p 8081 -H 0.0.0.0)"
alias vis="(cd ~/dev/dc2f-js-vis; screen -dmS leaf-vis polyserve -p 8082 -H 0.0.0.0)"
alias layout="(cd ~/dev/dc2f-js-layout; screen -dmS leaf-layout polyserve -p 8083 -H 0.0.0.0)"
alias charts="(cd ~/dev/dc2f-js-charts; screen -dmS leaf-charts polyserve -p 8084 -H 0.0.0.0)"

alias contributed="git log --author=\"Billy Hardy <hardywb@leidos.com>\" --pretty=tformat: --numstat | awk '{ add += $1; subs += $2; loc += $1 - $2 } END { printf \"added lines: %s, removed lines: %s, total lines: %s\n\", add, subs, loc }'"
alias ports="lsof -i -P | grep -i 'listen'"

alias bcopy="buildr copyright"
alias bcpe="buildr clean package eclipse"
alias bpce="buildr clean package eclipse"
alias bcp="buildr clean package"
alias bpc="buildr clean package"
alias be="buildr eclipse"
alias ba="buildr artifacts:sources"
alias bu="buildr clean package eclipse upload"

alias gn="git number"
alias ga="gn add"
alias gc="gn -c"
alias gitprune="git branch --merged | grep -v \"\*\" | grep -v master | grep -v release/ | xargs -n 1 git branch -d"
#alias gd="gn diff --color-words='\\w+|. '"

export PATH="$PATH:$HOME/.fzf/bin"
