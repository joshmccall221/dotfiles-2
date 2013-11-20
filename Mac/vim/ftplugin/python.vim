"===================================================================================
"         FILE:  python.vim
"  DESCRIPTION:  Settings that load only for files with the .py extension
"       AUTHOR:  Jarrod Taylor
"===================================================================================
"
" Settings for proper indentation
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal smarttab
setlocal expandtab

" Execute file being edited with <F2> using Python3
map <buffer> <F3> :!/usr/bin/python3 %

" Execute file being edited with <F2> using Python2.7
map <buffer> <F2> :!/usr/bin/python2.7 %

" Make sure we use the correct comment string in vim-commentary plug-in
set commentstring=#\ %s

" Unfold python files when we open them
exec "normal! zR"

" Recursively delete all pyc files
function! DeletePYCFiles()
    :silent !find . -name \*.pyc -exec rm \{\} \+
    :redraw!
    echo "pyc files deleted"
endfunction

map <Leader>dp :call DeletePYCFiles()<CR>