" =~# is the case-matching regexp match operator
" It does not regard 'ignorecase'
autocmd BufNewFile,BufRead *.markdown,*.md,*.mdown,*.mkd,*.mkdn,*.mdwn
      \ if &filetype =~# '^\%(conf\|modula2\)$' |
      \   set filetype=markdown |
      \ else |
      \   setf markdown |
      \ endif

autocmd BufNewFile,BufRead TODO.md nmap <buffer> <C-k> mz0ci[✓`zll
