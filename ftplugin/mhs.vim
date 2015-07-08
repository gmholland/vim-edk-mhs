if exists("b:did_ftplugin")
	finish
endif

" use single space for indentation
setlocal tabstop=1
setlocal softtabstop=1
setlocal shiftwidth=1
setlocal expandtab

" use syntax folding
setlocal foldmethod=syntax
setlocal foldcolumn=1

let b:did_ftplugin = 1
