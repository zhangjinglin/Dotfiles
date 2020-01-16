set nocompatible
syntax enable
set showmode
set mouse=a
set encoding=utf-8
set termguicolors

set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4

set number
set relativenumber
set showcmd
set cursorline
filetype indent on
set wildmenu
set wildmode=longest:list,full

set textwidth=80
set wrap
set linebreak
set scrolloff=5
set laststatus=2
set ruler
set showmatch

set incsearch
set hlsearch

set undofile
set autochdir
set history=1000
set autoread
set listchars=trail:■
set list



nnoremap j gj
nnoremap k gk

let mapleader=";"

inoremap jj <esc>
nnoremap <leader>h ^
nnoremap <leader>l $
nnoremap <leader>s :w<cr>
inoremap <leader>s <C-c>:w<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>qq :q!<cr>
nnoremap <leader>wh <C-w>h
nnoremap <leader>wl <C-w>l
inoremap zz <C-c>:wq<cr>
nnoremap zz :wq<cr>

" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_SR = "\<Esc>]50;CursorShape=2\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'easymotion/vim-easymotion'
Plug 'Yggdroot/LeaderF'

call plug#end()

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_powerline_fonts = 1
let g:airline_symbols.linenr = "\uF85B"
let g:airline_left_sep = "\uE0B4"
let g:airline_right_sep = "\uE0B6"
let g:airline_theme='simple'

let g:EasyMotion_do_mapping = 0 " Disable default mappings
nmap s <Plug>(easymotion-overwin-f2)
let g:EasyMotion_smartcase = 1

