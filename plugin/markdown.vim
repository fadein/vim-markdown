" Vim plugin
" Language:     Markdown
" Maintainer:   Erik Falor <https://github.com/fadein/vim-markdown>
" Last Change:  2025 May 14

function! MarkdownLevel()
    if getline(v:lnum) =~ '^# .*$'
        return "0"
    elseif getline(v:lnum) =~ '^## .*$'
        return ">1"
    elseif getline(v:lnum) =~ '^### .*$'
        return ">2"
    elseif getline(v:lnum) =~ '^#### .*$'
        return ">3"
    elseif getline(v:lnum) =~ '^##### .*$'
        return ">4"
    elseif getline(v:lnum) =~ '^###### .*$'
        return ">5"
    endif
    return "="
endfunction

augroup markdown-fold
    autocmd!
    autocmd FileType markdown setlocal foldmethod=expr
    autocmd FileType markdown setlocal foldexpr=MarkdownLevel()
    autocmd FileType markdown setlocal foldenable
augroup END

let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'zsh']
setlocal makeprg=pandoc\ -V\ geometry:margin=0.5in\ %\ --pdf-engine=xelatex\ -o\ %:t:r.pdf
