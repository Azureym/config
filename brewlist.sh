#!/bin/bash
command -v brew || { echo "I require brew but it's not installed.  Aborting."; exit 1}

set -o nounset
set -o errexit
set -o xtrace

brew install sshfs

brew install tmux

brew install vim --with-lua --with-override-system-vi

brew install autojump
# Add the following line to your ~/.bash_profile or ~/.zshrc file (and rememberto source the file to update your current session):
#  [[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

brew install git

brew install zsh
# 安装完成zsh之后，需要再使用git 下载最新版的oh-my-zsh配合使用

brew install reattach-to-user-namespace

brew install mycli # (mysql 命令行客户端)

brew install jvmtop # (java版的top)

brew install coreutils # (安装核心工具)
brew install grep # (GNU grep)
brew install gawk # (gnu 版本的awk，标准的awk)
brew install findutils # (Collection of GNU find, xargs, and locate)
brew install gnu-sed

brew install shellcheck

#brew install glances # (能够替代 dstat和htop)

brew install http_load

#brew install tig # (辅助git的工具)

brew install mycli

brew install redis # (能够使用redis-cli命令)

brew install tree

brew install mysql-client # (可以使用mysqldump命令,可以使用mysql官方的客户端, 需要添加配置：export PATH="/usr/local/opt/mysql-client/bin:$PATH")

brew install tcpdump
brew install bc

# ————————————————
# setup jdk8 of amazon version 
brew tap homebrew/cask-versions 

brew cask install corretto8

brew cask install hammerspoon
brew cask install keepassx
brew cask install motrix # (download manager)
brew cask install typora # (markdown)
brew cask install cheatsheet
brew cask install iina #（video player）

// redis gui desktop tools
brew cask install another-redis-desktop-manager
