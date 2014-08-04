if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

stty -ixon -ixoff
PATH=/usr/local/bin:$PATH

export PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h: \[\e[33m\]\w\[\e[0m\]\n\$ '
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
alias d='cd ~/Dropbox'
alias home='cd ~'
alias ls='ls -a'
alias v='vim'
alias profile='vim ~/.bash_profile'

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH
