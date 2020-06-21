#!/bin/bash
command -v brew || { echo "I require brew but it's not installed.  Aborting."; exit 1; }

set -o nounset
set -o errexit
set -o xtrace

brew list tmux || brew install tmux

brew list vim || brew install vim --with-lua --with-override-system-vi

brew list autojump || brew install autojump
# Add the following line to your ~/.bash_profile or ~/.zshrc file (and rememberto source the file to update your current session):
#  [[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

brew list git || brew install git

brew list zsh || brew install zsh
# 安装完成zsh之后，需要再使用git 下载最新版的oh-my-zsh配合使用

brew list reattach-to-user-namespace || brew install reattach-to-user-namespace

brew list mycli || brew install mycli # (mysql 命令行客户端)

brew list jvmtop || brew install jvmtop # (java版的top)

brew list coreutils || brew install coreutils # (安装核心工具)
brew list grep || brew install grep # (GNU grep)
brew list gawk || brew install gawk # (gnu 版本的awk，标准的awk)
brew list findutils || brew install findutils # (Collection of GNU find, xargs, and locate)
brew list gnu-sed || brew install gnu-sed

brew list shellcheck || brew install shellcheck

#brew install glances # (能够替代 dstat和htop)

brew list http_load || brew install http_load

#brew install tig # (辅助git的工具)

brew list mycli || brew install mycli

brew list redis || brew install redis # (能够使用redis-cli命令)

brew list tree || brew install tree

brew list mysql-client || brew install mysql-client # (可以使用mysqldump命令,可以使用mysql官方的客户端, 需要添加配置：export PATH="/usr/local/opt/mysql-client/bin:$PATH")

brew list tcpdump || brew install tcpdump
brew list bc || brew install bc

# ————————————————
# setup jdk8 of amazon version 
brew tap homebrew/cask-versions 

brew list corretto8 || brew cask install corretto8

brew list hammerspoon || brew cask install hammerspoon
brew list keepassx || brew cask install keepassx
brew list motrix || brew cask install motrix # (download manager)
brew list typora || brew cask install typora # (markdown)
brew list cheatsheet || brew cask install cheatsheet
brew list iina || brew cask install iina #（video player）
