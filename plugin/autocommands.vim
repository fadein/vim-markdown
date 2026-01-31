" Vim autocommand plugin
" Language:     Markdown
" Maintainer:   Erik Falor <https://github.com/fadein/vim-markdown>
" Last Change:  2026 Jan 15

" .frag files are already claimed by Vim's built-in OpenGL Shading Language
" plugins.  By the time vim-markdown's ftdetect script runs, Vim has already
" decided on the filetype GLSL.  Thus, .frag files need to be detected in this
" script, which is run earlier in the startup process.

autocmd BufRead *.frag,*.ig,*.beat
            \ setlocal filetype=markdown |
            \ if executable('bullet_to_table') |
            \    setlocal equalprg=bullet_to_table |
            \ endif

autocmd FileType markdown setlocal spell isfname-=# makeprg=pandoc\ -V\ geometry:top=0.5in,left=0.5in,right=0.5in,bottom=0.75in\ %\ --pdf-engine=xelatex\ -o\ %:t:r.pdf
