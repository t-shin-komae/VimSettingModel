set runtimepath+=~/.config/nvim/plug/non_lazy
runtime! lightline.vim
runtime! nerdtree-git-plugin.vim
runtime! nerdtree.vim
runtime! devicons.vim

call plug#begin('~/.local/share/nvim/plugged')

Plug 'joshdick/onedark.vim'

Plug 'itchyny/lightline.vim'

Plug 'taohexxx/lightline-buffer'

Plug 'scrooloose/nerdtree'

Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'ryanoasis/vim-devicons'

Plug 'tpope/vim-commentary'

Plug 'tiagofumo/vim-nerdtree-syntax-highlight' 

call plug#end()
