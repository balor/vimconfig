" ==================================
" Basic options
" ==================================

" UTF-8 as the default encoding
set encoding=utf8

" Backup and swap files directory
set backupdir=~/.vim/_backup//
set directory=~/.vim/_temp//
set nobackup
set noswapfile

" Mouse and terminal
set term=xterm2 "disable on mac
set ttymouse=xterm2
set mouse=a

" 256 Colors support
set t_AB=^[[48;5;%dm
set t_AF=^[[38;5;%dm
set t_Co=256

" Theme
colorscheme peaksea " color scheme
set background=dark
syntax on " syntax higlight

" Text view options
set wrap " wrapping long lines
set number " show lines numbers
set scrolloff=2 " the no of lines that triggers the text scrolling

" Searching
set ignorecase " ignore character case on search
set smartcase " ignore characrer case on search if there is no upper case letter in search phrase
set incsearch " incremental search
set hlsearch " higlight the search phrase

" Indents and spaces
set tabstop=2 " 1 tab == 4 spaces
set shiftwidth=2 " number of spaces for >> and << operations
set expandtab " all tab characters are converted to spaces
set cindent " auto-intent

" Others
set wildmenu " command completing
filetype plugin on " turn on plugins
filetype plugin indent on " turn on indent plugins
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem,*.pyc,*.pyo " ignore some non-editable files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz "ignore archive
set ruler

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500
