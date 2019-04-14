" Basic setup, including encoding, acceleration, backspace

" Encoding ------------------------------------------------------------
set encoding=utf-8      " Sets the encoding used inside vim.
set fileencoding=utf-8  " when writing a file.
set fileencodings=utf-8 " when reading a file.
set nobomb                " BOM is not prepended. (when binary option is on, BOM is not prepended)

" Making vim faster
set ttyfast
set lazyredraw

"" Fix backspace indent ------------------------------------------------
set backspace=indent,eol,start

"" Directories for swp files -------------------------------------------
set nobackup
set noswapfile

" File format setting (this only works on creating new buffer) ---------
set fileformats=unix,dos,mac

" Tab settings
set expandtab
set tabstop=4
set shiftwidth=4

" complete option 
set completeopt=menu

"vim-terminal settings
tnoremap <Esc> <C-\><C-n>

" for cuda

au BufNewFile,BufRead *.cu set ft=cuda
au BufNewFile,BufRead *.cuh set ft=cuda

" for mouse
set mouse=nv

"for clipboard
set clipboard=unnamed

