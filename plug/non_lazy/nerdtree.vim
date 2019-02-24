let g:nerdtree_tabs_open_on_console_startup=1 
let g:NERDTreeChDirMode=2
let g:NERDTreeShowBookmarks=1
let g:NERDTreeWinSize = 35
nnoremap <silent> <F3> :NERDTreeToggle<CR> 

autocmd VimEnter * execute 'NERDTree'
autocmd vimenter * wincmd p
