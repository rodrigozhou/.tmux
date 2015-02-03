#!/bin/bash

command -v brew >/dev/null 2>&1 || \
    { echo >&2 "Aborting: Homebrew is not installed."; exit 1; }

pkg="reattach-to-user-namespace"
brew list -1 | grep -q "^$pkg\$" || { brew install $pkg; }

git clone https://github.com/rodrigozhou/.tmux.git $HOME/.tmux
git clone https://github.com/seebi/tmux-colors-solarized.git \
    $HOME/.tmux/tmux-colors-solarized
ln -s $HOME/.tmux/tmux.conf $HOME/.tmux.conf
