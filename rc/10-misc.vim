" history and undo
set history=1000
set undolevels=1000

" useful trick, makes it possible to save a readonly file by sudoing
cmap w!! w !sudo tee % >/dev/null

" when opening a file, jump to the last known cursor position
autocmd BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif

" set textwidth to 80 for text files
autocmd FileType text setlocal textwidth=80

" turn off paste when leaving insert mode
au InsertLeave * set nopaste

" set omnifunc to default
set omnifunc=syntaxcomplete#Complete

" omnicompletion
autocmd FileType css,less,scss setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown,jade setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType php setlocal omnifunc=phpcomplete#Complete
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

