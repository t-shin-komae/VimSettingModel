function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

set statusline+=%{NearestMethodOrFunction()}

" By default vista.vim never run if you don't call it explicitly.
"
" If you want to show the nearest function in your statusline automatically,
" you can add the following line to your vimrc 
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

let g:vista_icon_indent = ["▸ ", ""]
" let g:vista_executive_for={
"             \ 'cpp':'lcn',
"             \ 'rust':'lcn',
"             \ 'python':'lcn',
"             \}
let g:vista_default_executive = 'ctags'
let g:vista#renderer#ctags='default'
let g:vista#render#enable_icon = 0
let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }
