#!/usr/bin/env zsh

base_dir=$(cd $(dirname $0) && pwd)

link() {
	target_dir=${2:-~}
	ln -i -s $base_dir/$1 $target_dir/$1
}

brew install \
  zplug \
  asdf \
  jandedobbeleer/oh-my-posh/oh-my-posh \
  atuin

link .zsh_plugins
link .zshrc
link .prompt.omp.json

for p in $(ls bin); do
  f=$(basename $p)
  link bin/$f
done
