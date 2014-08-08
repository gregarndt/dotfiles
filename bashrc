if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

stty -ixon -ixoff
PATH=/usr/local/bin:$PATH
export WORKON_HOME=~/.envs
export B2G_bin=/Applications/B2G.app/Contents/MacOS/b2g-bin 
export B2G_profile=/Applications/B2G.app/Contents/MacOS/gaia/profile/
source /usr/local/bin/virtualenvwrapper.sh

export PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h: \[\e[33m\]\w\[\e[0m\]\n\$ '
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
alias d='cd ~/Dropbox'
alias home='cd ~'
alias ls='ls -a'
alias v='vim'
alias profile='vim ~/.bash_profile'
