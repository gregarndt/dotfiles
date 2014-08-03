if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h: \[\e[33m\]\w\[\e[0m\]\n\$ '

PATH=/usr/local/bin:$PATH
stty -ixon -ixoff
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
alias d='cd ~/Dropbox'
alias home='cd ~'
alias ls='ls -all'
alias v='vim'
alias profile='vim ~/.bash_profile'

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

source /Library/Frameworks/Python.framework/Versions/2.7/bin/virtualenvwrapper.sh

if [ -f ~/.config/exercism/exercism_completion.bash ]; then
        . ~/.config/exercism/exercism_completion.bash
fi
