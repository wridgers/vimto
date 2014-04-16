" set colorscheme
if !has('gui_running')
  " set the colorscheme
  execute 'colorscheme '  . g:vimto#term_theme
  execute 'set background='  . g:vimto#term_background
endif

" nice terminal title
set title

" show line numbers
set number

" show row/col of cursor
set ruler

" highlight current line
set cursorline

" don't wrap lines
set nowrap

" show current command in status line
set showcmd

" always show status line
set laststatus=2

" extra scroll padding
set scrolloff=8

" wildmenu, for opening files
" this allows bash-like tab completion
set wildmode=longest,list,full
set wildmenu

" display trailing spaces
set list
set listchars=tab:→\ ,trail:⋅

" resize splits on window resize
au VimResized * exe "normal! \<c-w>="

" don't make noise or flash. at all. it's annoying as fuck.
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

