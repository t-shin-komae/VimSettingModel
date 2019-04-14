set runtimepath+=~/.config/nvim/plug/lazy
runtime! lsp.vim
runtime! deoplete.vim
runtime! neosnippet.vim

set runtimepath+=~/.config/nvim/plug/non_lazy
runtime! lightline.vim
runtime! nerdtree-git-plugin.vim
runtime! nerdtree.vim
runtime! devicons.vim
runtime! winresizer.vim

call plug#begin('~/.local/share/nvim/plugged')

Plug 'joshdick/onedark.vim' "MIT
Plug 'gosukiwi/vim-atom-dark' "MIT? (based on molokai)
Plug 'cocopon/iceberg.vim' "MIT

Plug 'itchyny/lightline.vim' "MIT

Plug 'taohexxx/lightline-buffer' "MIT

Plug 'scrooloose/nerdtree' "wtfpl

Plug 'Xuyuanp/nerdtree-git-plugin' "wtfpl

Plug 'ryanoasis/vim-devicons' "MIT 

Plug 'tpope/vim-commentary' "VIM

"Plug 'tiagofumo/vim-nerdtree-syntax-highlight' "GPL3.0

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } "MIT

Plug 'autozimu/LanguageClient-neovim', { 
            \ 'branch': 'next',
            \ 'do': 'bash install.sh',
            \ } "MIT

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'Shougo/neosnippet.vim' "MIT
Plug 'Shougo/neosnippet-snippets' "MIT

Plug 'airblade/vim-gitgutter' "MIT
Plug 'tpope/vim-fugitive' "VIM LICENCE

Plug 'jiangmiao/auto-pairs'

Plug 'simeji/winresizer'

" Plug 'w0rp/ale',{'on':':CudaStart'} " BSD 1 -Clause Simplified

call plug#end()
runtime! deoplete.vim
