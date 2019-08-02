#!/usr/bin/env bash

link() {
	target_dir=${2:-~}
	ln -i -s $(pwd)/$1 $target_dir/$1
}

brew install getantibody/tap/antibody

link .zsh_plugins
link .zshrc
