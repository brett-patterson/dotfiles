#!/usr/bin/env bash

link() {
	target_dir=${2:-~}
	ln -i -s $(pwd)/$1 $target_dir/$1
}

link .zshrc
link .tmux
link .tmux.conf
link .tmux.conf.local
