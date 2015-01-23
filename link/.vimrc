" pathogen
"  plugins: 
"   nerdtree
"   sensible
"   ctrlp
"   vim-airline
execute pathogen#infect()
syntax on
filetype plugin indent on

" NERDTree settings
let NERDTreeChDirMode = 2
" find current buffer in tree
nnoremap <leader>r :NERDTreeFind<cr>
nnoremap <leader>d :NERDTreeToggle<CR>

" ctrlp settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" ignore files
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" set directory where swap files are stored
set swapfile
set dir=/tmp

" normal mode remaps
nnoremap <leader>b :ls<cr>:b<space>

" Grep fix
set grepprg=grep\ -n\ $*

" Line numbers
set number

" Mouse support
set mouse=a 
set ttyfast

" function toggles
" toggle highlighting on/off
nnoremap <F4> :set hlsearch! hlsearch?<CR>
" toggle word wrap
nnoremap <F5> :set nowrap! nowrap?<CR>

" self explanatory
set cursorline

" http://blog.chrisbe.st/articles/coding/two-years-of-vim
" jk exits insert mode
inoremap jk <esc>
" makes vim move down a 'cursor' line for when line is word wrapped
nnoremap j gj
nnoremap k gk
" Unmapping arrow keys.
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>
set splitright
set splitbelow
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" use colon and semicolon to do things
nnoremap ; :
