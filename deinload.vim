let s:dein_dir='~/.config/nvim/dein'
set runtimepath+=s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if dein#load_state(s:dein_dir)
	call dein#begin(s:dein_dir)
	let s:plugin_dir    = '~/.config/nvim/plug/lazy'
  	let s:non_lazy_toml = g:plug_dir . '/non_lazy'
	let s:lazy_toml = g:plug_dir . '/lazy'
	call dein#add('Shougo/dein.vim')
    call loadAllToml(s:non_lazy_toml,0)
    call loadAllToml(s:lazy_toml,0)
	call dein#end()
	call dein#save_state()
endif

if dein#check_install()
	call dein#install()
endif

function! s:deinClean()
  if len(dein#check_clean())
    call map(dein#check_clean(), 'delete(v:val, "rf")')
  else
    echo '[ERR] no disabled plugins'
  endif
endfunction
command! DeinClean :call s:deinClean()



filetype plugin indent on




function! s:loadAllToml(dir,lazyflag)
    let filelistString = glob("`find " . dir . " -name '*.toml' -print`")
    let filelist = split(filelistString,'\n')
    for file in filelist
        call dein#load_toml(file,{'lazy':lazyflag})
    endfor
endfunction
