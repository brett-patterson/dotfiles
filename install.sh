#!/usr/bin/env zsh

base_dir=$(cd $(dirname $0) && pwd)

link() {
	target_dir=${2:-~}
	ln -i -s $base_dir/$1 $target_dir/$1
}

brew install zplug
brew install atuin

link .zsh_plugins
link .zshrc
link bin

REPO_BASE="$HOME/.zsh-repos"

clone_or_update_repo() {
	repo_url="$1"
	repo_name="$2"

	repo_path="$REPO_BASE/$repo_name"
	if [ -d $repo_path ]; then
		git -C $repo_path pull
	else
		mkdir -p $repo_path
		git clone $repo_url $repo_path
	fi
}

clone_or_update_repo https://github.com/dracula/iterm.git dracula/iterm
open ~/.zsh-repos/dracula/iterm/Dracula.itermcolors