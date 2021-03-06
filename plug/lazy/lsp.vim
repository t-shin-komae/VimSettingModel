set hidden

let g:LanguageClient_autoStart= 1

augroup filetype_load
    autocmd!
    autocmd BufReadPost *.rs setlocal filetype=rust
    autocmd BufReadPost *.py setlocal filetype=python
    autocmd BufReadPost *.java setlocal filetype=java
augroup END

let g:jdt_executable_jar=expand($JDT_LANGUAGE_SERVER_DIR .  '/plugins/org.eclipse.equinox.launcher_1.*.jar')
let g:LanguageClient_serverCommands = {
            \ 'rust': ['rustup', 'run', 'stable', 'rls'],
            \ 'python':['pyls'],
            \ 'fortran':['fortls','--symbol_skip_mem', '--incrmental_sync', '--autocomplete_no_prefix'],
            \ 'java':['java','-Declipse.application=org.eclipse.jdt.ls.core.id1',
            \ '-Dosgi.bundles.defaultStartLevel=4',
            \ '-Declipse.product=org.eclipse.jdt.ls.core.product',
            \ '-noverify',
            \ '-Xms1G',
            \ '-jar', g:jdt_executable_jar,
            \ '-configuration', expand($JDT_LANGUAGE_SERVER_DIR) . '/config_linux/',
            \ '-data', getcwd()],
            \ 'cpp':['clangd'],
            \ 'c':['clangd']
            \ }
let g:LanguageClient_useVirtualText=0
let g:LanguageClient_loggingFile = '/tmp/LanguageClient.log'
let g:LanguageClient_loggingLevel = 'INFO'
let g:LanguageClient_serverStderr = '/tmp/LanguageServer.log'

function LC_maps()
    if has_key(g:LanguageClient_serverCommands, &filetype)
        nnoremap <F5> :call LanguageClient_contextMenu()<CR>
        nnoremap <buffer> <silent> K :call LanguageClient#textDocument_hover()<cr>
        nnoremap <buffer> <silent> gd :call LanguageClient#textDocument_definition()<CR>
        nnoremap <buffer> <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
    endif
endfunction

autocmd FileType * call LC_maps()


set signcolumn=yes
