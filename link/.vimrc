" pathogen
"  plugins: 
"   nerdtree
"   sensible
execute pathogen#infect()
syntax on
filetype plugin indent on

" normal mode remaps
nnoremap <leader>b :ls<cr>:b<space>

" NERDTree settings
let NERDTreeChDirMode = 2
" find current buffer in tree
map <leader>r :NERDTreeFind<cr>

" Grep fix
set grepprg=grep\ -n\ $*

" Line numbers
:set number

" Mouse support
set mouse=a 
set ttyfast

" vsplit default right
set splitright

" Press F4 to toggle highlighting on/off, and show current value.
noremap <F4> :set hlsearch! hlsearch?<CR>
