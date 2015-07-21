# Path to your oh-my-zsh installation.
export ZSH=/Users/yangmu/Documents/DevUtils/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git mvn autojump)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

#================== Dennis Profile =======================
#bash_profile useful copy
#enables color for iTerm
export TERM=xterm-color

# alias command ls
alias ll="ls -alFh"
alias la="ls -A"
alias l="ls -CF"

# grep color on
alias grep="grep --color"

# Add JAVA_HOME environment variable
#export JAVA_HOME='/Library/Java/Home'
# 1.7 openjdk
export JAVA_HOME='/Library/Java/JavaVirtualMachines/jdk1.7.0_71.jdk/Contents/Home/'

# Add Maven Home
export M2_HOME=/usr/local/maven
export PATH=$PATH:$M2_HOME/bin
# Maven debug option
export MAVEN_OPTS='-Xdebug -Xnoagent -Djava.compiler=NONE -Xrunjdwp:transport=dt_socket,address=8000,server=y,suspend=n -Xms512m -Xmx1024m -XX:PermSize=512m -XX:MaxPermSize=1024m'

alias fk='source /Users/yangmu/myscript/switch'

# private shell script
export PATH=$PATH:/Users/yangmu/myscript

#command completion
autoload -U compinit
compinit

#correction
setopt correctall

# prompt
autoload -U promptinit
promptinit

export JMETER_HOME=/Users/yangmu/Documents/tools/apache-jmeter-2.11/
export PATH=$PATH:$JMETER_HOME/bin
