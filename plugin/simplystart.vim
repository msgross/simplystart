" Welcome to grossremark's vim config file
" Where I have no idea what I'm doing
" Maintainer: M Gross <https://grossremarks.com>
" Version: 0.1.1

if exists('g:simplystart_loaded')
    finish
endif

" It's a bit hacky, but one of my tests is simply to validate whether the plugin
" loads without issue. I think there are probably much easier ways to validate
" an error, but might as well have it set up for if I need to expand later 
if exists('g:test_mode') && g:test_mode == 1
    let g:test_mode = 0
    finish
endif
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
ytax on

" Set indent controls
:set autoindent
:set expandtab
:set smartindent
" Set various tab widths
:set tabstop=4 
:set shiftwidth=4
:set softtabstop=4

" Set test width to standard 80 characters
:set textwidth=0
:set nowrap
" Set a line column
:set colorcolumn=81
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

let g:simplystart_loaded = 1
