---
# SimplyStart     
A _vim_ module with some basic settings, will probably change as my needs change      
## Why?
None whatsoever, honestly, if you want a quick start, go with
[vim-sensible](https://github.com/tpope/vim-sensible.git), it's probably more
than sufficient. These are just settings that I wanted and added gradually, or
ones that I found in other configurations that I thought would be neat-o to use.
So feel free to look through and yank the stuff you want, and toss the rest. 
## What Does It Come With?
This config comes with some basic features that I end up using consistently. The
below isn't complete or consistent, but it's a simple summary
### Display line numbers
These commands display line numbers and column 
```
:set number
:set relativenumber
:set ruler
```
### Set some auto-indent controls
These configurations apply some auto-indent controls and replaces tab inputs
with spaces
```
:set autoindent
:set expandtab
:set smartindent
:set tabstop=4
:set shiftwidth=4
:set softtabstop=4
```
### Set some search controls
Set controls so that it highlights searches but Ctrl-L clears the highlighting. Search is
incremental so it fills as it is found. Search will ignore case. 
```
:set hlsearch
:set incsearch
:set ignorecase
:set smartcase
:set showmatch
nmap <silent> <C-L> <C-L>:nohlsearch<CR>:match<CR>:diffupdate<CR>
```
### Backspace
Sets backspacing behavior so it can go through indentations created by
auto-indent, as well as eol, and past start
```
:set backspace=indent,eol,start
```
### Disable swap files 
Disables swap files. .swp files are probably useful, but I've never felt saved
by having it, it just leaks into my git repos when I'm not paying attention
```
:set noswapfile
```
## Installation      
1) `cd ~/.vim`
2) `mkdir -p pack/plugins/start`
3) `git clone git@github.com:msgross/simplystart.git
~/.vim/pack/plugins/start/simplystart`      
Note: A vim package manager can probably handle this as well, but I haven't
personally tried that out 
## Dependencies
flazz maintains a pretty large repository of theme options, we personally use
minimalist as our default if it's available, desert (which comes with vim by
default) otherwise.
[colorschemes](https://github.com/flazz/vim-colorschemes.git)
## License
See VIM's [LICENSE](https://github.com/vim/vim/blob/master/LICENSE) for details 
