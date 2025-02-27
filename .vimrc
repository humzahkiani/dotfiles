
" === Leader Key Configuration ===
let mapleader = " "  " Set space as leader key

let g:vimrubocop_config = '~/.vim/plugged/vim-rubocop/rubocop.yml'

" === General Settings ===
set scroll=5
set number
set relativenumber
set ignorecase
set cursorline
set expandtab
set tabstop=4
set shiftwidth=4
set scrolloff=8
set incsearch
set smartcase
set nowrap

" Keep scroll same value after resizing
autocmd VimResized * :set scroll=5

" === Visual Settings ===
set updatetime=300
" set clipboard=unnamedplus
set showmode
set showcmd

" === Better Whitespace Handling ===
" set listchars=tab:>·,trail:·,extends:>,precedes:<,nbsp:+
" set list             " Show problematic characters

" === Better Split Navigation ===
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Custom Keybinding - Remove trailing whitespace with leader(space)+w
nnoremap <leader>w :%s/\s\+$//e<CR>

" === File Finding ===
set path+=**         " Search down into subfolders
set wildmenu         " Display all matching files when we tab complete

" === Plugins ===
call plug#begin()

Plug 'vim-ruby/vim-ruby'
Plug 'vim-rubocop/plugin/vim-rubocop'

call plug#end()

" === Ruby indentation settings ===
autocmd FileType ruby setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4

