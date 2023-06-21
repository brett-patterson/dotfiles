eval "$(~/opt/homebrew/bin/brew shellenv)"

source $(brew --prefix)/Cellar/zplug/*/init.zsh
source ~/.zsh_plugins

if ! zplug check; then
    zplug install
fi

zplug load

eval "$(oh-my-posh init zsh --config ~/.prompt.omp.json)"
. "$(brew --prefix asdf)/libexec/asdf.sh"
eval "$(atuin init zsh --disable-up-arrow)"

alias g="git"
alias gs="g status"

export PATH=".:$HOME/bin:$PATH"

mkdir -p ~/.zshrc.d
for f in $(ls $HOME/.zshrc.d/); do
    . "$HOME/.zshrc.d/$f"
done
