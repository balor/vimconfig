" ############
" # RIP FLUX #
" ############


set nocompatible              " be iMproved, required
filetype off                  " required


" set the vim-plug plugin directory
call plug#begin('~/.vim/plugged')

" let Vundle manage Vundle, required
Plug 'VundleVim/Vundle.vim'

" git wrapper
Plug 'tpope/vim-fugitive'

" fuzzy file opener
Plug 'kien/ctrlp.vim'

" commentary plugin
Plug 'scrooloose/nerdcommenter'

" tree explorer
Plug 'scrooloose/nerdtree'

" syntax check
Plug 'w0rp/ale'

" statusline
Plug 'itchyny/lightline.vim'

" file types plugins
Plug 'kchmck/vim-coffee-script'
Plug 'vim-scripts/mako.vim'
Plug 'vim-scripts/nginx.vim'

" color themes
Plug 'vim-scripts/peaksea'

" Initialize vim-plug plugin system
call plug#end()

source ~/.vim/settings/generic_settings.vim
source ~/.vim/settings/generic_bindings.vim
source ~/.vim/settings/filetypes.vim
source ~/.vim/settings/plugins.vim

if filereadable(glob("~/.vim/settings/_os_specific.vim")) 
    source ~/.vim/settings/_os_specific.vim
endif
