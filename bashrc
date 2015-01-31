if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
function hg_ps1
{
    hg prompt "({root|basename}@{bookmark}) " 2> /dev/null
}

function git_diff() {
    git diff --no-ext-diff -w "$@" | vim -R -
}

stty -ixon -ixoff

PATH=~/.bin/:/Applications/kdiff3.app/Contents/MacOS:/Users/mozilla/work/gecko/:/Users/mozilla/work/moz-git-tools:$HOME/.apps/bin:$HOME/work/packer:/usr/local/bin:$PATH

source /usr/local/bin/virtualenvwrapper.sh
source ~/.git-completion.bash
source ~/.git-prompt.sh

if [ -f ~/.credentials/aws_credentials.sh ]; then
    source ~/.credentials/aws_credentials.sh
fi
if [ -f ~/.credentials/taskcluster.sh ]; then
    source ~/.credentials/taskcluster.sh
fi

export WORKON_HOME=~/.envs
export DOCKER_HOST=tcp://192.168.50.10:4243

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h: $(__git_ps1) $(hg_ps1) \[\e[33m\]\w\[\e[0m\]\n\$ '

alias ls='ls -al'
alias v='vim'
alias ports='lsof -i -P | grep -i "LISTEN"'
