NERDTree

" gruvbox config
colorscheme gruvbox
set background=dark

set lines=50 columns=150

nnoremap ZZ :call QuitPrompt()<cr>

fun! QuitPrompt()
   if has("gui_running") && tabpagenr("$") == 1 && winnr("$") == 1
      let choice = confirm("Close?", "&yes\n&no", 1)
      if choice == 1 | wq | endif
   else | wq | endif
endfun
