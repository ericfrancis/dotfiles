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
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

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

" http://vim.wikia.com/wiki/Quickly_adding_and_deleting_empty_lines
" Ctrl-j/k deletes blank line below/above, and Alt-j/k inserts.
nnoremap <silent><C-j> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><C-k> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><A-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><A-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>
