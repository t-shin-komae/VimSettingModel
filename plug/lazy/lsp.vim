set hidden

let g:LanguageClient_serverCommands = {
        \ 'rust': ['rustup', 'run', 'stable', 'rls'],
	\ 'python':['pyls'],
    \ 'fortran':['fortls','--symbol_skip_mem', '--incrmental_sync', '--autocomplete_no_prefix'],
        \ }
let g:LanguageClient_useVirtualText=0

function LC_maps()
    if has_key(g:LanguageClient_serverCommands, &filetype)
        nnoremap <F5> :call LanguageClient_contextMenu()<CR>
        nnoremap <buffer> <silent> K :call LanguageClient#textDocument_hover()<cr>
        nnoremap <buffer> <silent> gd :call LanguageClient#textDocument_definition()<CR>
        nnoremap <buffer> <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
    endif
endfunction

autocmd FileType * call LC_maps()

let g:LanguageClient_autoStart= 1

set signcolumn=yes
