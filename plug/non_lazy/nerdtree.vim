﻿let g:nerdtree_tabs_open_on_console_startup=1 
let g:NERDTreeChDirMode=2
let g:NERDTreeShowBookmarks=1
let g:NERDTreeWinSize = 35
nnoremap <silent> <F3> :NERDTreeToggle<CR> 

autocmd VimEnter * execute 'NERDTree'
autocmd Vimenter * wincmd p

"from https://github.com/scrooloose/nerdtree/issues/635
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
