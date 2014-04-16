" replace tabs with spaces
set expandtab

" set tabs
execute 'set shiftwidth='  . g:vimto#tab_size
execute 'set tabstop='     . g:vimto#tab_size
execute 'set softtabstop=' . g:vimto#tab_size

" smart indenting when starting a new line
set smartindent

" insert tabs in smart places
set smarttab

