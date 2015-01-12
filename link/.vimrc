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

" Grep settings
set grepprg=grep\ -n\ $*

" Line numbers
:set number

" Mouse support
set mouse=a 
set ttyfast

" vsplit default right
set splitright
