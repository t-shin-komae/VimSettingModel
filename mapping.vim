" Map leader to ,this must be before import plugins
let mapleader="\<Space>"

" Move cursor by display lines when wrapping.
nnoremap j gj
nnoremap gj j
nnoremap k gk
nnoremap gk k

" Split
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>

" buffers
nmap <silent><Tab> :call Mod_move('n')<CR>
nmap <silent><S-Tab> :call Mod_move('p')<CR>
nnoremap <silent><leader><Tab> :tabNext<CR>
nnoremap <silent><leader><S-Tab> :tabNext<CR>

function! Mod_move(move) abort
	let s:error_msg = "This buffer is not normal buffer!"
	if !&modifiable && !(&buftype=="terminal")
		echo s:error_msg
	else
		if a:move=='n'
			bn
		elseif a:move=='p'
			bp
		else
			echo 'error'
		endif
	endif
endfunction

