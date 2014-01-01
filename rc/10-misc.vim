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

