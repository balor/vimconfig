" ############
" # RIP FLUX #
" ############

" Common GUI options
set noantialias

" GUI Components
set guioptions-=T " hide toolbar
set guioptions-=l " hide left scroll
set guioptions-=L " hide left scroll
set guioptions-=r " hide right scroll
set guioptions-=R " hide right scroll


if filereadable(glob("~/.vim/settings/_os_specific.gvim")) 
    source ~/.vim/settings/_os_specific.gvim
endif
