" pathogen
"  plugins: 
"   nerdtree
"   sensible
"   ctrlp
"   vim-airline
"   vim-surround
"   DidYouMean
"   nerd Commenter
"   tagbar
"   supertab
"   Vim Tmux Navigator
" gvim plugins
"  gruvbox (color scheme)

execute pathogen#infect()
syntax on
filetype plugin indent on

" tagbar settings
nmap <F8> :TagbarToggle<CR>

" vim-airline settings
let g:airline#extensions#branch#enabled = 1

" find current buffer in tree
nnoremap <leader>r :NERDTreeFind<cr>
nnoremap <leader>d :NERDTreeToggle<CR>

" ctrlp settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" ignore files
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/* 

set smarttab
set shiftwidth=2
set tabstop=2

" view open buffers
nnoremap <leader>b :ls<cr>:b<space>

" Grep fix
set grepprg=grep\ -n\ $*

set number
set cursorline
set noswapfile
set mouse=a

" function toggles
" toggle highlighting on/off
nnoremap <F4> :set hlsearch! hlsearch?<CR>
" toggle word wrap
nnoremap <F5> :set nowrap! nowrap?<CR>

" http://blog.chrisbe.st/articles/coding/two-years-of-vim
" jj exits insert mode
inoremap jj <esc>
" makes vim move down a 'cursor' line for when line is word wrapped
nnoremap j gj
nnoremap k gk
" default open tabs to right and down
set splitright
set splitbelow

" http://blog.unixphilosopher.com/2015/02/five-weird-vim-tricks.html
cabbrev ww :w
nnoremap ; :
nnoremap : ;
" Auto-save a file when you leave insert mode
autocmd InsertLeave * if expand('%') != '' | update | endif
