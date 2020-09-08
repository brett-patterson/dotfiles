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

export PATH=".:$HOME/bin:$PATH"

mkdir -p ~/.zshrc.d
for f in $(ls $HOME/.zshrc.d/); do
    . "$HOME/.zshrc.d/$f"
done
