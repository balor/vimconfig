" ############
" # RIP FLUX #
" ############


set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'davidhalter/jedi-vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'kchmck/vim-coffee-script'
Plugin 'vim-scripts/mako.vim'
Plugin 'elzr/vim-json'
Plugin 'vim-scripts/peaksea'
Plugin 'dkprice/vim-easygrep'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

source ~/.vim/settings/generic_settings.vim
source ~/.vim/settings/generic_bindings.vim
source ~/.vim/settings/filetypes.vim
source ~/.vim/settings/plugins.vim

if filereadable(glob("~/.vim/settings/_os_specific.vim")) 
    source ~/.vim/settings/_os_specific.vim
endif
