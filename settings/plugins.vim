" :: Syntastic ::
"let g:syntastic_enable_signs=1
"let g:syntastic_auto_loc_list=2
"let g:syntastic_mode_map = {
"    \ 'mode': 'passive',
"    \ 'active_filetypes': ['python', 'coffee', 'sass', 'html'],
"    \ }
"let g:syntastic_python_checkers = ['flake8']
"let g:syntastic_python_flake8_args = ' --ignore=E303,E251,E712'

" :: nerdcommenter ::
" ,/ to invert comment on the current line/selection
nmap <leader>/ :call NERDComment(0, "invert")<cr>
vmap <leader>/ :call NERDComment(0, "invert")<cr>

" :: YouCompleteMe :;
" only tab as the selector
let g:ycm_key_list_select_completion = ['<TAB>']
let g:ycm_key_list_previous_completion = ['<TAB>']

" :: jedi ::
"let g:jedi#auto_vim_configuration = 0
"let g:jedi#popup_select_first = 0
"let g:jedi#popup_on_dot = 0
"let g:jedi#use_tabs_not_buffers = 0
"let g:jedi#goto_assignments_command = "<leader>a"

" :: NERDTree ::
nnoremap <leader>d :NERDTreeToggle<cr>
let NERDTreeIgnore = ['\.pyc$','\.pyo$'] " ignored files
let g:NERDTreeChDirMode=2 " allow nerdtree to change CWD
let NERDTreeMinimalUI=1 " hide tips
