" enter the current millenium
set nocompatible

" enable syntax and plugins (for netrw)
syntax enable
filetype plugin on
filetype indent on

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" Always show current position
set ruler

colorscheme desert
set background=dark

set relativenumber

set noswapfile
set nobackup

" Enable mouse support
set mouse=a

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Show matching results already when typing
set incsearch

" Show matching brackets when text indicator is over them
set showmatch

" Enable smart auto-indent
set autoindent
set smartindent

" Reload file when it was changes outside Vim
set autoread

" Use spaces instead of tabs
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2

" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %F%m%r%h\ %w\ \ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

" Faster way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Disable modeline completly for security reasons
set modelines=0
set nomodeline

