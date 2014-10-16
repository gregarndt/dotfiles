if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

stty -ixon -ixoff

PATH=$HOME/.apps/bin:$HOME/work/packer:/usr/local/bin:$PATH

source /usr/local/bin/virtualenvwrapper.sh
source ~/.git-completion.bash
source ~/.git-prompt.sh

if [ -f ~/.credentials/aws_credentials.sh ]; then
    source ~/credentials/aws_credentials.sh
fi
if [ -f ~/.credentials/taskcluster.sh ]; then
    source ~/credentials/taskcluster.sh
fi

export WORKON_HOME=~/.envs
export DOCKER_HOST=tcp://192.168.50.10:4243

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h: $(__git_ps1) \[\e[33m\]\w\[\e[0m\]\n\$ '

alias ls='ls -al'
alias v='vim'
