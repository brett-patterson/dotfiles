source <(antibody init)

ZSH="$(antibody home)/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh"
ZSH_THEME=agnoster
DEFAULT_USER=brettp

antibody bundle < ~/.zsh_plugins

autoload -U compinit && compinit

alias gs="git status"

export VIRTUALENVWRAPPER_PYTHON=python3

export PATH="$HOME/.cargo/bin:$PATH"

export GOROOT="/usr/local/go"
export GOPATH="$HOME/go"
export PATH="$PATH:$GOROOT/bin:$GOPATH/bin"

. /usr/local/bin/virtualenvwrapper.sh
