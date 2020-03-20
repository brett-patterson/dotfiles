source <(antibody init)

ZSH="$(antibody home)/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh"
ZSH_THEME=agnoster
DEFAULT_USER=$USER
SHOW_AWS_PROMPT=false

antibody bundle < ~/.zsh_plugins

autoload -Uz compinit
if [[ -n ${HOME}/.zcompdump(#qN.mh+24) ]]; then
    compinit;
else
    compinit -C;
fi

AGNOSTER_PROMPT_SEGMENTS=(
    prompt_status
    prompt_context
    prompt_virtualenv
    prompt_dir
#    prompt_git
    prompt_end
)

alias g="git"
alias gs="g status"

export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3

export PATH="$HOME/.cargo/bin:$PATH"

export GOROOT="/usr/local/go"
export GOPATH="$HOME/go"
export PATH="$GOROOT/bin:$GOPATH/bin:/usr/local/sbin:$HOME/bin:$PATH"

. /usr/local/bin/virtualenvwrapper_lazy.sh

eval "$(jira --completion-script-zsh)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/local/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/usr/local/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

