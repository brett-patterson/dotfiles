#!/usr/bin/env zsh

base_dir=$(cd $(dirname $0) && pwd)

link() {
	target_dir=${2:-~}
	ln -i -s $base_dir/$1 $target_dir/$1
}

brew install zplug
brew install asdf

link .zsh_plugins
link .zshrc
link bin
