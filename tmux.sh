#!/usr/bin/env bash

#change this
PREFIX_DIR=""
version="2.5"



mkdir -p ./sources
cd ./sources

wget -c https://github.com/tmux/tmux/releases/download/${version}/tmux-${version}.tar.gz

tar xvzf tmux-${version}

cd tmux-${version}

#on CentOS/Fedora/RHEL

sudo yum install libevent-devel ncurses-devel

./configure --prefix=${PREFIX_DIR}

make -j4

make install

tmux -V