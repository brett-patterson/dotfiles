eval "$(~/homebrew/bin/brew shellenv)"

source $(brew --prefix)/Cellar/zplug/*/init.zsh
source ~/.zsh_plugins

if ! zplug check; then
    zplug install
fi

zplug load

. "$(brew --prefix asdf)/libexec/asdf.sh"

alias g="git"
alias gs="g status"

export PATH=".:$HOME/bin:$PATH"

mkdir -p ~/.zshrc.d
for f in $(ls $HOME/.zshrc.d/); do
    . "$HOME/.zshrc.d/$f"
done
