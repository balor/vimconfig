#!/bin/bash

# Borrowed from https://github.com/pmdz/vimconfig

if [ ! -e $HOME/.vimrc ]; then
  echo "-> Creating $HOME/.vimrc symbolic link"
  ln -s $HOME/.vim/vimrc $HOME/.vimrc
fi

if [ ! -e $HOME/.gvimrc ]; then
  echo "-> Creating $HOME/.gvimrc symbolic link"
  ln -s $HOME/.vim/gvimrc $HOME/.gvimrc
fi

if [ ! -e $HOME/.vim/bindings.vim ]; then
  echo "-> Creating symlink for bindings.vim"
  ln -s $HOME/.vim/after/plugin/bindings.vim $HOME/.vim/bindings.vim
fi

mkdir -p $HOME/.vim/bundle/Vundle.vim/
echo "-> Installing vundle..."
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
