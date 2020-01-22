" enter the current millenium
set nocompatible

" enable syntax and plugins (for netrw)
syntax enable
filetype plugin on

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

colorscheme evening

set relativenumber

set noswapfile
set nobackup

set mouse=a

" Show matching results already when typing
set incsearch

set autoindent
set autoread

" Disable modeline completly for security reasons
set modelines=0
set nomodeline

