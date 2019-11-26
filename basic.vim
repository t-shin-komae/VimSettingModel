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

" for fortran https://cosmo0920.wordpress.com/2011/03/21/gvim%E3%81%AEfortran%E7%94%A8%E8%A8%AD%E5%AE%9A%E3%83%A1%E3%83%A2/
let fortran_free_source=1
let fortran_fold = 1
au! BufRead,BufNewFile *.f90 let b:fortran_do_enddo=1
" for mouse
set mouse=nv

"for clipboard
set clipboard=unnamed

