"common options
set number
set ruler
set showcmd
set shiftwidth=4
filetype plugin indent on

"file colorscheme
:colorscheme murphy

"file reading
autocmd BufRead * autocmd FileType <buffer> ++once
	\ if &ft !~# 'commit\|rebase' && line("'\"") > 1 && line("'\"") <= line("$") | exe 'normal! g`"' | endif

command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
	\ | wincmd p | diffthis

set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

"find options
"set ignorecase
set nowrapscan
set incsearch
set hlsearch

"Set redactor
set backspace=indent,eol,start
set autoindent
set history=100
set list
set listchars=tab:>-,trail:-
map Q gq

"C files
vnoremap _g y:exe "grep /" .. escape(@", '\\/') .. "/ *.c *.h"<CR>

"Plugins
"plugin supports creating and using vimballs(self-installing Vim plugin archives)
packadd vimball
