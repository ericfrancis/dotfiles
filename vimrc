" plugins
"  - pathogen
"  - sensible
"  - Vim Tmux Navigator
"  - nerdtree

runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
syntax on
filetype plugin indent on

" find current buffer in tree
nnoremap <leader>r :NERDTreeFind<cr>
nnoremap <leader>d :NERDTreeToggle<CR>

" view open buffers
nnoremap <leader>b :ls<cr>:b<space>

set number
set cursorline
set noswapfile

" Mouse Mode: http://usevim.com/2012/05/16/mouse/
" Enable mouse use in all modes
set mouse=a
" Send more characters for redraws
set ttyfast
set ttymouse=xterm2

" default open tabs to right and down
set splitright
set splitbelow

" function toggles

" toggle highlighting on/off
nnoremap <F4> :set hlsearch! hlsearch?<CR>

" toggle word wrap
nnoremap <F5> :set nowrap! nowrap?<CR>

" jj exits insert mode
inoremap jj <esc>

" makes vim move down a 'cursor' line for when line is word wrapped
nnoremap j gj
nnoremap k gk

cabbrev ww :w
nnoremap ; :
nnoremap : ;

" Auto-save a file when you leave insert mode
autocmd InsertLeave * if expand('%') != '' | update | endif
