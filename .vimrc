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
set wildmode=longest:full,full

" Always show current position
set ruler

" Display line numbers relative to current line
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

" Always keep some screen lines above and below the cursor
set scrolloff=10

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

" Retain visual selection after indenting
vnoremap > >gv
vnoremap < <gv

" Sane behavior for tab key
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
vmap <Tab> >
vmap <S-Tab> <

" Setup tabs on F9-12
nnoremap <F9> :tabnew<CR>
nnoremap <F10> :tabn<CR>
nnoremap <F11> :tabp<CR>
nnoremap <F12> :tabnew ~/.vimrc<CR>
" Always show the status line
set laststatus=2

" Hide mode (because lightline shows it)
set noshowmode

" Faster way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Configure netrw (built-in file browser plugin)
let g:netrw_banner=0
let g:netrw_liststyle=3 " tree view
let g:netrw_altv=1      " open splits to the right

" Disable modeline completly for security reasons
set modelines=0
set nomodeline

" Set color scheme (from plugin) and background
colorscheme elflord
set background=dark

" Install plugin manager if missing
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Enable plugins
call plug#begin()
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
call plug#end()

" Fuzzy find with fzf
nnoremap <C-p> :Files<CR>

" Set <space> as leader key
"let mapleader = " "
