autocmd VimEnter * execute 'Defx -columns=icons:filename:type -split=vertical -winwidth=35 -direction=topleft -sort=extension.'

nnoremap <silent><F3> :execute 'Defx -columns=icons:filename:type -split=vertical -winwidth=35 -direction=topleft -toggle=true . '<CR>

autocmd FileType defx call s:defx_my_settings()

function! s:defx_my_settings() abort
	nnoremap <silent><buffer><expr> <CR>
				\ defx#do_action('drop') 
	nnoremap <silent><buffer><expr> u
				\ defx#do_action('cd', ['..'])
	nnoremap <silent><buffer><expr> N
\ defx#do_action('new_file')
	
endfunction
