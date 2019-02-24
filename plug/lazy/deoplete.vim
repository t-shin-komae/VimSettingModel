let g:deoplete#enable_at_startup = 1

function! s:deocustom()
    call deoplete#custom#option('auto_complete_delay', 200)
    call deoplete#custom#source('LanguageClient',
                \ 'min_pattern_length',
                \ 2)
endfunction


autocmd VimEnter * call s:deocustom()

set completeopt=menuone
