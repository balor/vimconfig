" ############
" # RIP FLUX #
" ############


set nocompatible              " be iMproved, required
filetype off                  " required


" set the vim-plug plugin directory
call plug#begin('~/.vim/plugged')

" let Vundle manage Vundle, required
Plug 'VundleVim/Vundle.vim'

Plug 'tpope/vim-fugitive'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'davidhalter/jedi-vim'
Plug 'Valloric/YouCompleteMe'
Plug 'kchmck/vim-coffee-script'
Plug 'vim-scripts/mako.vim'
Plug 'vim-scripts/peaksea'
Plug 'dkprice/vim-easygrep'
Plug 'stephpy/vim-yaml'
Plug 'elzr/vim-json'

" Initialize vim-plug plugin system
call plug#end()

source ~/.vim/settings/generic_settings.vim
source ~/.vim/settings/generic_bindings.vim
source ~/.vim/settings/filetypes.vim
source ~/.vim/settings/plugins.vim

if filereadable(glob("~/.vim/settings/_os_specific.vim")) 
    source ~/.vim/settings/_os_specific.vim
endif
