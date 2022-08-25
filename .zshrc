eval "$(~/homebrew/bin/brew shellenv)"

source $(brew --prefix)/Cellar/zplug/*/init.zsh
source ~/.zsh_plugins

if ! zplug check; then
    zplug install
fi

zplug load

update_terminal_title() {
    title=$(basename $PWD)
    echo -ne "\e]1;$title\a"
}

precmd_functions=($precmd_functions update_terminal_title)

alias g="git"
alias gs="g status"

export PATH=".:$HOME/bin:$PATH"

export ATUIN_NOBIND="true"
eval "$(atuin init zsh)"
bindkey '^r' _atuin_search_widget

mkdir -p ~/.zshrc.d
for f in $(ls $HOME/.zshrc.d/); do
    . "$HOME/.zshrc.d/$f"
done
