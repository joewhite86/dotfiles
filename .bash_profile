if [[ ${EUID} == 0 ]] ; then
	PS1='\[\033[01;31m\]\h\[\033[01;34m\] \W \$\[\033[00m\] '
else
	PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \W \$\[\033[00m\] '
fi

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

#export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
#export ANDROID_HOME=/usr/local/opt/android-sdk
#export SEBA_HOME=~/Workspace/exclusive-one/semantic

export MAVEN_OPTS="-Xmx4G -XX:MaxPermSize=512M"

export EDITOR=vim

#ulimit -S -n 40960

PATH=$PATH:/usr/local/mysql/bin:/usr/local/neo4j/bin:/usr/local/android-sdk/tools:/usr/local/android-sdk/platform-tools
PATH=$PATH:/usr/local/sbin
PATH=$PATH:/usr/local/pear/bin
PATH=$PATH:~/Workspace/bash

alias netstat_osx="sudo lsof -i -P"
alias go_frogjs="cd ~/Workspace/whitefrog/frogjs"
alias go_myband="cd ~/Workspace/whitefrog/myband"
alias show_files='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hide_files='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias config='/usr/bin/git --git-dir=$HOME/Workspace/whitefrog/dotfiles/ --work-tree=$HOME'

if [ -f $(brew --prefix)/etc/bash_completion ]; then
	. $(brew --prefix)/etc/bash_completion
fi

# open manpages with preview
pman() {
    man -t ${@} | open -f -a /Applications/Preview.app/
}