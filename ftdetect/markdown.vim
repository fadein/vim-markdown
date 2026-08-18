" =~# is the case-matching regexp match operator
" It does not regard 'ignorecase'
autocmd BufNewFile,BufRead *.markdown,*.md,*.mdown,*.mkd,*.mkdn,*.mdwn
      \ if &filetype =~# '^\%(conf\|modula2\)$' |
      \   set filetype=markdown |
      \ else |
      \   setf markdown |
      \ endif

autocmd BufNewFile,BufRead TODO.md nnoremap <buffer> <C-k>     mz0ci[✓`z
autocmd BufNewFile,BufRead TODO.md nnoremap <buffer> <C-s>     mz0ci[◎`z
autocmd BufNewFile,BufRead TODO.md nnoremap <buffer> <C-q>     mz0ci[✗`z
autocmd BufNewFile,BufRead TODO.md nnoremap <buffer> <C-space> mz0ci[ `z
