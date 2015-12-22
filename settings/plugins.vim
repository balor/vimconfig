" :: Syntastic ::
let g:syntastic_mode_map = {
    \ 'mode': 'passive',
    \ 'active_filetypes': ['python', 'ruby', 'php', 'coffee', 'sass', 'html'],
    \ }

" :: nerdcommenter ::
" ,/ to invert comment on the current line/selection
nmap <leader>/ :call NERDComment(0, "invert")<cr>
vmap <leader>/ :call NERDComment(0, "invert")<cr>

" :: YouCompleteMe :;
" only tab as the selector
let g:ycm_key_list_select_completion = ['<TAB>']
let g:ycm_key_list_previous_completion = []

" :: jedi ::
let g:jedi#auto_vim_configuration = 0
let g:jedi#popup_select_first = 0
let g:jedi#popup_on_dot = 0
let g:jedi#use_tabs_not_buffers = 0
let g:jedi#goto_command = ""
let g:jedi#goto_assignments_command = "<leader>a"
let g:jedi#goto_definitions_command = "<leader>z"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = ""
let g:jedi#completions_command = ""
let g:jedi#rename_command = ""
let g:jedi#show_call_signatures = ""

" :: NERDTree ::
nnoremap <leader>d :NERDTreeToggle<cr>
let NERDTreeIgnore = ['\.pyc$','\.pyo$'] " ignored files
let g:NERDTreeChDirMode=2 " allow nerdtree to change CWD
let NERDTreeMinimalUI=1 " hide tips

" :: Vim-Airline ::
let g:airline_theme             = 'simple'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
" let g:airline_powerline_fonts   = 1

" :: Ctrl-P :;
nmap <unique> <silent> <Leader><Leader> :CtrlP<CR>
nmap <unique> <silent> <Leader><Leader><Leader> :CtrlPClearCache<CR>:CtrlP<CR>
let g:ctrlp_map = '' " disable default mapping
let g:ctrlp_match_window = 'bottom,order:ttb,min:8,max:8,results:8'
:set wildignore+=.git,venv,*.egg-info/*,*.pyc
" don't try to find currently opened buffer
let g:ctrlp_switch_buffer=0"
