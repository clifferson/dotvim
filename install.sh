#!/usr/bin/env bash

echo "Cloning dotvim"
hash git >/dev/null && /usr/bin/env git clone git@github.com:clifferson/dotvim.git ~/.vim || {
  echo "git not installed"
  exit
}

echo "Symlinking vimrc"
ln -s ~/.vim/vimrc ~/.vimrc

if [ -f ~/.vim/gvimrc ]
then
  echo "Symlinking gvimrc"
  ln -s ~/.vim/gvimrc ~/.gvimrc
fi

echo "Updating submodules"
cd ~/.vim && git submodule update --init
