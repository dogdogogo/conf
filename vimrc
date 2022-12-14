" ===
" ++++ better use
" ===
set nu
syntax on
set backspace=2
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set scrolloff=6
set history=1000
set mouse=a
set encoding=utf-8
set laststatus=2
set autochdir
set hlsearch
set incsearch
set ignorecase
set smartcase
set hidden
set nocompatible
set wrap
set textwidth=80
filetype plugin indent on
set clipboard=unnamed
set encoding=utf-8
set fileencoding=utf-8
set statusline=%F\ %r\ %m%=%3p%%\ \ \ \ \ %y
let mapleader=' '

augroup GetLastPosition " Return to where you last edited
  au!
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
augroup END

" if exists('+termguicolors')
"   set termguicolors
" endif

exec 'nohlsearch'

" ===
" ++++ basic mappings
" ===
map H 5h
map J 5j
map K 5k
map L 5l
nnoremap sl :set splitright<cr>:vsplit<cr>
nnoremap sh :set nosplitright<cr>:vsplit<cr>
nnoremap sj :set splitbelow<cr>:split<cr>
nnoremap sk :set nosplitbelow<cr>:split<cr>
nnoremap <up> :res -2<cr>
nnoremap <down> :res +2<cr>
nnoremap <right> :vertical res +2<cr>
nnoremap <left> :vertical res -2<cr>
nnoremap - $
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>
nnoremap <a-j> o
nmap ∆ <a-j>
nnoremap <a-k> O
nmap ˚ <a-k>

inoremap <a-j> <esc>o
imap ∆ <a-j>
inoremap <a-k> <esc>O
imap ˚ <a-k>

vnoremap - $

" ===
" ++++ mapleader mappings
" ===
nnoremap <leader>bn :bnext<cr>
nnoremap <leader>bN :bNext<cr>
nnoremap <leader>bd :bdelete<cr>
nnoremap <leader>h <c-w>h
nnoremap <leader>j <c-w>j
nnoremap <leader>k <c-w>k
nnoremap <leader>l <c-w>l
nnoremap <leader>= : source $MYVIMRC<cr>
nnoremap <leader>sh :nohlsearch<cr>

" ===
" ++++ color, style settings
" ===
" set guicursor=a:block
