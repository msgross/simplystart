" Welcome to grossremark's vim config file
" Where I have no idea what I'm doing
" Maintainer: M Gross <https://grossremarks.com>
" Version: 0.1.0
if has('autocmd')
    filetype plugin indent on
endif
" Basic configuration options
:set nocp
" Set encoding to utf 8
:set encoding=utf-8
" Set line numbers on
:set number
" Set line numbers to be relative
:set relativenumber
" enable ruler
:set ruler
" disable beeping on error
:set visualbell
" limit files searched for auto-complete
:set complete-=i
:set wildmenu
:set wildmode=longest:list,full
" Set the syntax highlighting on 
syntax on
" Try to add minimalist colorscheme (from
" https://github.com/flazz/vim-colorschemes.git)
" If you can't find it, use desert default theme
try
    colorscheme minimalist 
catch /^Vim\%((\a\+)\)\=:E185/
    colorscheme desert 
endtry

" Set indent controls
:set autoindent
:set expandtab
:set smartindent
" Set various tab widths
:set tabstop=4 
:set shiftwidth=4
:set softtabstop=4

" Set test width to standard 80 characters
:set textwidth=80
" Set backspace behavior
:set backspace=indent,eol,start
" Set undo levels 
:set undolevels=1000
" Set some search parameters
:set hlsearch
:set incsearch
:set ignorecase
:set smartcase
:set showmatch 
" Set Ctrl-L to clear search results
nmap <silent> <C-L> <C-L>:nohlsearch<CR>:match<CR>:diffupdate<CR>
" Set title to be filename
:set title
" Disable swap files
:set noswapfile
