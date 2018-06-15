" :: Python ::
let python_highlight_builtins=1
let python_highlight_exceptions=1
let python_highlight_string_formatting=1
let python_highlight_string_format=1
let python_highlight_string_templates=1
let python_highlight_doctests=1
au BufNewFile,BufRead *.py set tabstop=4 shiftwidth=4 softtabstop=4
autocmd FileType python setlocal completeopt-=preview

" :: Ruby ::
au BufNewFile,BufRead *.rb set syntax=ruby ai et ts=2 sw=2 tw=0
au BufNewFile,BufRead *.ru set syntax=ruby ai et ts=2 sw=2 tw=0

" :: PHP ::
map <C-B> :!php -l %<CR> " check php file syntax
let php_sql_query=1 " higlight sql query in php strigns
let php_htmlInStrings=1 " higlight html code in php strings
au BufNewFile,BufRead *.php set syntax=php ai et ts=4 sw=4 tw=0
au BufNewFile,BufRead *.php5 set syntax=php ai et ts=4 sw=4 tw=0

" :: Mako Templates ::
au BufNewFile,BufRead *.mako set ft=mako syntax=mako tabstop=2 shiftwidth=2 softtabstop=2

" :: HTML Files ::
au BufNewFile,BufRead *.html set ft=mako syntax=mako tabstop=2 shiftwidth=2 softtabstop=2

" :: CoffeeScript ::
au BufNewFile,BufRead *.coffee set ft=coffee syntax=coffee tabstop=2 shiftwidth=2 softtabstop=2

" :: Sass ::
au BufNewFile,BufRead *.sass set ft=sass syntax=sass tabstop=2 shiftwidth=2 softtabstop=2

" :: Mustache templates ::
au BufNewFile,BufRead *.mustache set ft=mustache syntax=mustache tabstop=2 shiftwidth=2 softtabstop=2

" :: Underscore templates ::
au BufRead,BufNewFile *.jst set syntax=underscore_template tabstop=2 shiftwidth=2 softtabstop=2
"
" :: JSON ::
au BufRead,BufNewFile *.json set ft=json syntax=json tabstop=2 shiftwidth=2 softtabstop=2
"
" :: YAML ::
au BufRead,BufNewFile *.yaml set ft=yaml syntax=yaml tabstop=2 shiftwidth=2 softtabstop=2
au BufRead,BufNewFile *.yml set ft=yaml syntax=yaml tabstop=2 shiftwidth=2 softtabstop=2

