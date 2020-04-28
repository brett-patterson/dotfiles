source <(antibody init)

antibody bundle < ~/.zsh_plugins

autoload -Uz compinit
if [[ -n ${HOME}/.zcompdump(\#qN.mh+24) ]]; then
    compinit;
else
    compinit -C;
fi

alias g="git"
alias gs="g status"

export GOROOT="/usr/local/go"
export GOPATH="$HOME/go"
export PATH="$HOME/.cargo/bin:$GOROOT/bin:$GOPATH/bin:/usr/local/sbin:$HOME/bin:$HOME/.jenv/bin:$PATH"

eval "$(jira --completion-script-zsh)"
eval "$(jenv init -)"
