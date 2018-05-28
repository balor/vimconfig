" :: nerdcommenter ::
" ,/ to invert comment on the current line/selection
nmap <leader>/ :call NERDComment(0, "invert")<cr>
vmap <leader>/ :call NERDComment(0, "invert")<cr>

" :: NERDTree ::
nnoremap <leader>d :NERDTreeToggle<cr>
let NERDTreeIgnore = ['\.pyc$','\.pyo$'] " ignored files
let g:NERDTreeChDirMode=2 " allow nerdtree to change CWD
let NERDTreeMinimalUI=1 " hide tips

" :: lightline ::
let g:lightline = {
		\ 'colorscheme': 'wombat',
		\ 'active': {
		\   'left': [ [ 'mode', 'paste' ],
		\             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
		\ },
		\ 'component_function': {
		\   'gitbranch': 'fugitive#head'
		\ },
		\ }

" :: Ctrl-P :;
nmap <unique> <silent> <Leader><Leader> :CtrlP<CR>
nmap <unique> <silent> <Leader><Leader><Leader> :CtrlPClearCache<CR>:CtrlP<CR>
let g:ctrlp_map = '' " disable default mapping
let g:ctrlp_match_window = 'bottom,order:ttb,min:8,max:8,results:8'
:set wildignore+=.git,venv,*.egg-info/*,*.pyc
" don't try to find currently opened buffer
let g:ctrlp_switch_buffer=0"
