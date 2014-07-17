#!/bin/bash

if [ ! -e $HOME/.vimrc ]; then
  echo "-> Creating $HOME/.vimrc symbolic link"
  ln -s $HOME/.vim/vimrc $HOME/.vimrc
fi

if [ ! -e $HOME/.gvimrc ]; then
  echo "-> Creating $HOME/.gvimrc symbolic link"
  ln -s $HOME/.vim/gvimrc $HOME/.gvimrc
fi

if [ ! -e $HOME/.vim/_backup ]; then
  mkdir $HOME/.vim/_backup
fi

if [ ! -e $HOME/.vim/_temp ]; then
  mkdir $HOME/.vim/_temp
fi

unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]] || [[ "$unamestr" == 'FreeBSD' ]] || [[ "$unamestr" == 'Linux-BSD' ]] ; then
  echo "-> Linking Linux/BSD specific settings"
  ln -s $HOME/.vim/settings/os_specific/linux.vim $HOME/.vim/settings/_os_specific.vim
elif [[ "$unamestr" == 'Darwin' ]] ; then
  echo "-> Linking Darwin specific settings"
  ln -s $HOME/.vim/settings/os_specific/darwin.vim $HOME/.vim/settings/_os_specific.vim
fi

mkdir -p $HOME/.vim/bundle/Vundle.vim/
echo "-> Installing vundle..."
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
