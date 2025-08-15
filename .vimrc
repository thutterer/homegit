" Ensure clientserver feature is available (most modern Vims have this)
if !has('clientserver')
  echomsg "Vim was not compiled with +clientserver. Remote commands will not work."
  finish
endif

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

" Faster update time for cursor hold events, etc.
set updatetime=300

" Use system clipboard for copy/paste
" 'unnamed' for default register, 'unnamedplus' for system clipboard
set clipboard=unnamedplus

" Auto-insert comment leader when opening new line in comment
set formatoptions+=o

" Display line numbers relative to current line
" set relativenumber

" Or, display normal line numbers
set number

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
set scrolloff=5

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

" Splits are open in reading direction (right then below)
set splitright
set splitbelow

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
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-vinegar'
Plug 'jiangmiao/auto-pairs'
Plug 'pangloss/vim-javascript'
Plug 'mhinz/vim-startify'
call plug#end()

" Set color scheme (from plugin) and background
if (has("termguicolors"))
  set termguicolors
endif
colorscheme habamax
" set background=dark
let g:lightline = { 'colorscheme': 'one' }

" Fuzzy find with fzf
nnoremap <C-p> :Files<CR>

" Use startify as 'New tab'
nnoremap <C-t> :tabnew<CR>:Startify<CR>
let g:startify_custom_header = []

" Set <space> as leader key
let mapleader = " "
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>c :Commands<CR>

" Folding (`za`)
set foldcolumn=1
set foldmethod=syntax
set foldlevel=10
set foldtext=getline(v:foldstart)
set fillchars= 

" Do not wrap long lines
set nowrap
