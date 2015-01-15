" pathogen
"  plugins: 
"   nerdtree
"   sensible
"   ctrlp
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

" vsplit default right
set splitright

" Press F4 to toggle highlighting on/off, and show current value.
nnoremap <F4> :set hlsearch! hlsearch?<CR>
" toggle word wrap
nnoremap <F5> :set nowrap! nowrap?<CR>

" self explanatory
set cursorline

