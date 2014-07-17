" Leader key
let mapleader=","

" Windows-like tab keys
vmap <tab> >gv
vmap <s-tab> <gv

" Windows-like select all
map <c-a> ggVG

" Switching between windows
map <C-Up> <C-W>k
map <C-Down> <C-W>j
map <C-Left> <C-W>h
map <C-Right> <C-W>l

" Alternative mode switcher for mobile phones
imap jj <ESC>

" Turn off F1 help key
nmap <F1> :echo<CR>
imap <F1> <C-o>:echo<CR>

" Simple line sorting
map <leader>s :! sort -u<cr>

" Fast save
nmap <leader>w :w!<cr>

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>

" Stupid shift key fixes
cmap W w
cmap Wq wq
cmap WQ wq
cmap wQ wq
cmap Q q
cmap Tabe tabe


