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
let g:ycm_key_list_previous_completion = ['<TAB>']

" :: jedi ::
let g:jedi#auto_vim_configuration = 0
let g:jedi#popup_select_first = 0
let g:jedi#popup_on_dot = 0
let g:jedi#use_tabs_not_buffers = 0
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
