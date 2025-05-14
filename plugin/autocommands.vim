" Vim autocommand plugin
" Language:     Markdown
" Maintainer:   Erik Falor <https://github.com/fadein/vim-markdown>
" Last Change:  2025 May 14

" .frag files are already claimed by Vim's built-in OpenGL Shading Language
" plugins.  By the time vim-markdown's ftdetect script runs, Vim has already
" decided on the filetype GLSL.  Thus, .frag files need to be detected in this
" script, which is run earlier in the startup process.

autocmd BufRead *.frag,*.ig,*.beat setlocal filetype=markdown
autocmd FileType markdown setlocal spell isfname-=#
