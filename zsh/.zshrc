# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bira"
# 配置方案参见:https://github.com/zsh-users/zsh-syntax-highlighting/issues/464
typeset -A ZSH_HIGHLIGHT_STYLES
# 设置syntax-highlighting的命令颜色，取消命令的蓝色颜色，修改成绿色
# 设置通配符颜色
ZSH_HIGHLIGHT_STYLES[globbing]=fg=magenta
# 设置查找历史命令颜色
ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=magenta
# for history-search-multi-word see https://github.com/zdharma/history-search-multi-word
typeset -gA HSMW_HIGHLIGHT_STYLES
HSMW_HIGHLIGHT_STYLES[reserved-word]="fg=yellow"
#HSMW_HIGHLIGHT_STYLES[path]="fg=white,bold"

# 配置方案参见 https://github.com/zsh-users/zsh-autosuggestions#configuration
#ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#6495ED"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=8"
export user; user=$(whoami)

#ZSH_THEME="dpoggi"
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
plugins=(git autojump zsh-completions zsh-syntax-highlighting tmux zsh-autosuggestions history-search-multi-word redis-cli golang)
#plugins=(git mvn autojump zsh-completions zsh-syntax-highlighting tmux osx docker zsh-autosuggestions history-search-multi-word redis-cli golang)
# plugins=(git mvn autojump vi zsh-syntax-highlighting zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh
# User configuration
export PATH=$HOME/bin:/usr/local/bin:$PATH
# brew 安装curl 使用优先
export PATH="/usr/local/opt/curl/bin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"
# You may need to manually set your language environment
# export LANG=en_US.UTF-8
# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
# export EDITOR='vim'
# else
# export EDITOR='mvim'
# fi
# Compilation flags
# export ARCHFLAGS="-arch x86_64"
# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

#================== Moon Young Profile =======================
#bash_profile useful copy
#enables color for iTerm, for more information about the color see https://www.iterm2.com/faq.html,https://superuser.com/questions/399594/color-scheme-not-applied-in-iterm2
export TERM=xterm-256color
export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"

#tmux 设置
alias tmux="TERM=xterm-256color tmux"

# alias command ls
alias ll="ls -alFh"
alias la="ls -A"
alias l="ls -CF"

# brew install coreutils && brew install gnu-sed && brew install gawk && brew install grep && brew install findutils
# gnu grep,sed,awk instead of that of BSD
alias grep="ggrep --color"
alias egrep="ggrep -E --color"
alias pgrep="ggrep -P --color"
alias awk="gawk"
alias sed="gsed -E"
alias date="gdate"
alias split="gsplit"
alias find="gfind"
alias xargs="gxargs"
alias locate="glocate"

# Add Maven Home
export M2_HOME=/usr/local/maven
export PATH=$PATH:$M2_HOME/bin
# Maven debug option
export MAVEN_OPTS='-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=8000 -Xms512m -Xmx512m'
# export MAVEN_OPTS='-Xdebug -Xnoagent -Djava.compiler=NONE -Xrunjdwp:transport=dt_socket,address=8000,server=y,suspend=n -Xms1G -Xmx1G -XX:PermSize=128m -XX:MaxPermSize=128m -Dspring.profiles.active=dev'

# thrift-0.9.3 path. 使用的是brew安装，命令:brew search thrift; brew install thrift@0.9
# export PATH="/usr/local/opt/thrift@0.9/bin:$PATH"

# private shell script export PATH=$PATH:/Users/yangmu/myscript
#command completion
#autoload -U compinit
#compinit
##correction
#setopt correctall
## prompt
#autoload -U promptinit
#promptinit
autoload -U compinit && compinit

# 不同版本的jdk配置
# 设置 JDK 8  
export JAVA_8_HOME=`/usr/libexec/java_home -v 1.8`
# amazon corretto8 version. use `brew tap homebrew/cask-versions && brew cask install corretto8` to install
export JAVA_8_CORRETTO='/Library/Java/JavaVirtualMachines/amazon-corretto-8.jdk/Contents/Home'
# 默认jdk8
export JAVA_HOME=$JAVA_8_CORRETTO
# jdk版本切换
alias jdk8='export JAVA_HOME=$JAVA_8_CORRETTO'

# zsh 命令行提示配色, 这里因为我安装了oh-my-zsh插件命令行提示配色插件，所以可以暂时不用使用这一行
# source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#
# 设置gnu-sed的环境变量
PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
# 设置ajc编译器的路径
export PATH="/Users/$user/Documents/script/ajc/bin:$PATH"
# 设置visualvm的启动路径
export PATH="/Users/$user/Documents/muyang/tools/visualvm_142/bin:$PATH"

#macvim 命令行启动配置
alias mvim="/Applications/MacVim.app/Contents/MacOS/MacVim"
#sublime 命令行启动配置
#alias subl="'/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl'"
alias c=code
# 英文显示git的提示信息
alias git='LANG=en_US.UTF-8 /usr/local/bin/git'

#彩色的man文档阅读配置
export LESS_TERMCAP_mb=$(tput bold; tput setaf 2) # green
export LESS_TERMCAP_md=$(tput bold; tput setaf 6) # cyan
export LESS_TERMCAP_me=$(tput sgr0)
export LESS_TERMCAP_so=$(tput bold; tput setaf 3; tput setab 4) # yellow on blue
export LESS_TERMCAP_se=$(tput rmso; tput sgr0)
export LESS_TERMCAP_us=$(tput smul; tput bold; tput setaf 7) # white
export LESS_TERMCAP_ue=$(tput rmul; tput sgr0)
export LESS_TERMCAP_mr=$(tput rev)
export LESS_TERMCAP_mh=$(tput dim)
export LESS_TERMCAP_ZN=$(tput ssubm)
export LESS_TERMCAP_ZV=$(tput rsubm)
export LESS_TERMCAP_ZO=$(tput ssupm)
export LESS_TERMCAP_ZW=$(tput rsupm)

# 禁止zshell的自动提示
unsetopt correct_all
# brew
export PATH="/usr/local/sbin:$PATH"

#set history size
export HISTSIZE=10000
#save history after logout
export SAVEHIST=10000
#history file location
export HISTFILE=~/.zsh_history
export PATH="/usr/local/opt/bc/bin:$PATH"

# go version management:https://github.com/moovweb/gvm
[[ -d ~/.gvm ]] && source ~/.gvm/scripts/gvm
alias go9="gvm use go9"
alias go12="gvm use go12"
alias go14="gvm use go14"

export PATH="/usr/local/opt/mysql-client/bin:$PATH"

# 用户相关的一些脚本信息
source ~/.zsh_user_profile

# Created by `userpath` on 2020-08-10 09:21:59
export PATH="$PATH:/Users/mu.yang/.local/bin"
