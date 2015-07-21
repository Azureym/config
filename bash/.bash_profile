
# enables color in the terminal bash shell export
export CLICOLOR=1

#set up the color theme for list export
export LSCOLORS=gxfxcxdxbxegedabagacad

#function parse_git_dirty {
	  #[[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working directory clean" ]] && echo "*"
#}
#function parse_git_branch {
	  #git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
#}
#sets up the prompt color (currently a green similar to linux terminal)
export PS1="[\[\e[32;1m\]\u@\[\e[32;1m\]\h\[\e[31;1m\]:\[\e[33;40m\]\w\[\e[0m\]]\$ "

#enables color for iTerm
export TERM=xterm-color

# alias command ls
alias ll="ls -alFh"
alias la="ls -A"
alias l="ls -CF"

# grep color on
alias grep="grep --color"

# Add JAVA_HOME environment variable
# 1.6 mac jdk
export JAVA_HOME='/Library/Java/Home'
# 1.7 openjdk
#export JAVA_HOME='/Library/Java/JavaVirtualMachines/jdk1.7.0_71.jdk/Contents/Home/'

# Add Maven Home
export M2_HOME=/usr/local/maven
export PATH=$PATH:$M2_HOME/bin
# Maven debug option
export MAVEN_OPTS='-Xdebug -Xnoagent -Djava.compiler=NONE -Xrunjdwp:transport=dt_socket,address=8000,server=y,suspend=n -Xms512m -Xmx1024m -XX:PermSize=512m -XX:MaxPermSize=1024m'
#export MAVEN_OPTS='-Xdebug -Xnoagent -Djava.compiler=NONE -Xrunjdwp:transport=dt_socket,address=8000,server=y,suspend=y -Xms512m -Xmx1024m -XX:PermSize=128m -XX:MaxPermSize=256m'

# git completion configuration
source /usr/local/git/contrib/completion/git-completion.bash

# jetty home
export JETTY_HOME=/Users/yangmu/Documents/tools/Server/jetty-distribution-8.1.14.v20131031
export PATH=$PATH:$JETTY_HOME/bin

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
#[[ -s "/Users/yangmu/.gvm/bin/gvm-init.sh" ]] && source "/Users/yangmu/.gvm/bin/gvm-init.sh"

alias fk='source /Users/yangmu/myscript/switch'

# private shell script
export PATH=$PATH:/Users/yangmu/myscript

