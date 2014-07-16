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
Plugin 'kchmck/vim-coffee-script'
Plugin 'elzr/vim-json'
Plugin 'Valloric/YouCompleteMe'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

source ~/.vim/global.vim
source ~/.vim/filetypes.vim
source ~/.vim/plugins.vim

" highlight cursorline slightly
" hi CursorLine   cterm=NONE guibg=#2B2B2B

" friendly aliases
:command WQ wq
:command Wq wq
:command W w
:command Q q
:command Qa qa