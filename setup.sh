#!/bin/bash

if [ ! -e $HOME/.vim/_backup ]; then
  mkdir $HOME/.vim/_backup
fi

if [ ! -e $HOME/.vim/_temp ]; then
  mkdir $HOME/.vim/_temp
fi

NEOVIM_SETUP=false

if type "nvim" > /dev/null; then
  echo "Neovim detected"
  NEOVIM_SETUP=true

  if [ ! -e $HOME/.config/nvim ]; then
    mkdir $HOME/.config/nvim
  fi

  if [ ! -e $HOME/.config/nvim/init.vim ]; then
    echo "-> Creating $HOME/.config/nbim/init.vim symbolic link"
    ln -s $HOME/.vim/vimrc $HOME/.config/nvim/init.vim
  fi
elif type "vim" > /dev/null; then
	echo "Classic vim detected"

	if [ ! -e $HOME/.vimrc ]; then
		echo "-> Creating $HOME/.vimrc symbolic link"
		ln -s $HOME/.vim/vimrc $HOME/.vimrc
	fi

	if [ ! -e $HOME/.gvimrc ]; then
		echo "-> Creating $HOME/.gvimrc symbolic link"
		ln -s $HOME/.vim/gvimrc $HOME/.gvimrc
	fi
fi

unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]] || [[ "$unamestr" == 'FreeBSD' ]] || [[ "$unamestr" == 'Linux-BSD' ]] ; then
  echo "-> Linking Linux/BSD specific settings"
  ln -s $HOME/.vim/settings/os_specific/linux.vim $HOME/.vim/settings/_os_specific.vim
  ln -s $HOME/.vim/settings/os_specific/linux.gvim $HOME/.vim/settings/_os_specific.gvim
elif [[ "$unamestr" == 'Darwin' ]] ; then
  echo "-> Linking Darwin specific settings"
  ln -s $HOME/.vim/settings/os_specific/darwin.vim $HOME/.vim/settings/_os_specific.vim
  ln -s $HOME/.vim/settings/os_specific/darwin.gvim $HOME/.vim/settings/_os_specific.gvim
fi

echo "-> Downloading vim-plug"
if $NEOVIM_SETUP; then
	curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
else
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

vim +PlugInstall +qall
