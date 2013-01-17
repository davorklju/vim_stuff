set number
set expandtab
set shiftwidth=3
set softtabstop=3
set nowrap
set smartindent

set undodir=~/.vim/undodir
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload

colorscheme inkpot
set clipboard=unnamed

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'https://github.com/vim-ruby/vim-ruby.git'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'SuperTab'
Bundle 'https://github.com/nathanaelkane/vim-indent-guides.git' 

"c++
Bundle 'https://github.com/vim-scripts/Cpp11-Syntax-Support.git'
Bundle 'git://github.com/Rip-Rip/clang_complete.git'

"javacomplete
Bundle 'https://github.com/vim-scripts/javacomplete.git'
if has("autocmd")
  autocmd Filetype java setlocal omnifunc=javacomplete#Complete
  autocmd Filetype java setlocal completefunc=javacomplete#CompleteParamsInfo
endif

"clojure related stuff
Bundle 'git://github.com/vim-scripts/VimClojure.git'
let vimclojure#HighlightBuiltins = 3
let vimclojure#ParenRainbow = 3

filetype plugin indent on  
syntax on

"close scratch window
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
