source <(antibody init)

antibody bundle < ~/.zsh_plugins

autoload -Uz compinit
if [[ -n ${HOME}/.zcompdump ]]; then
    compinit;
else
    compinit -C;
fi

update_terminal_title() {
    title=$(basename $PWD)
    echo -ne "\e]1;$title\a"
}

precmd_functions=($precmd_functions update_terminal_title)

alias g="git"
alias gs="g status"

export DYLD_FALLBACK_LIBRARY_PATH="/usr/local/opt/openssl/lib"
export GOPATH="$HOME/go"
export PATH="$HOME/.cargo/bin:$GOROOT/bin:$GOPATH/bin:/usr/local/sbin:$HOME/bin:$HOME/.jenv/bin:$PATH"

eval "$(jira --completion-script-zsh)"
eval "$(jenv init -)"
