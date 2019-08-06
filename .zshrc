source <(antibody init)

ZSH="$(antibody home)/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh"
ZSH_THEME=agnoster
DEFAULT_USER=brettp
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
#    prompt_virtualenv
    prompt_dir
#    prompt_git
    prompt_end
)

alias gs="git status"

export VIRTUALENVWRAPPER_PYTHON=python3

export PATH="$HOME/.cargo/bin:$PATH"

export GOROOT="/usr/local/go"
export GOPATH="$HOME/go"
export PATH="$PATH:$GOROOT/bin:$GOPATH/bin"

# . /usr/local/bin/virtualenvwrapper.sh
