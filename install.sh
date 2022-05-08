#!/usr/bin/env bash

base_dir=$(cd $(dirname $0) && pwd)

link() {
	target_dir=${2:-~}
	ln -i -s $base_dir/$1 $target_dir/$1
}

if brew list | grep -q antibody; then
	brew upgrade antibody
else
	brew install getantibody/tap/antibody
fi

brew install atuin

link .zsh_plugins
link .zshrc

mkdir -p "$HOME/bin"
for f in bin/*; do
	link "$f"
done
