" custom vimto key mapping, all in one file for easy consumption
if !g:vimto#disable_mapping

  " sensible cursor movement with long lines
  nnoremap j gj
  nnoremap k gk

  " clear search
  nmap <silent> ,/ :nohlsearch<CR>

  " toggle spellchecking
  nmap <F6> :setlocal spell!<CR>

  " open last buffer
  noremap <leader>l <C-^>

  " easy split navigation
  nnoremap <C-h> <C-w>h
  nnoremap <C-j> <C-w>j
  nnoremap <C-k> <C-w>k
  nnoremap <C-l> <C-w>l

  " format current paragraph or selection
  vmap Q gq
  nmap Q gqap

  " yank to end of line
  map Y y$

  " select all
  map <leader>a ggVG

  " toggle paste mode
  set pastetoggle=<F2>

  " remap C-U to stop massively undoing things
  inoremap <C-U> <C-G>u<C-U>

  " like J (join), only split
  nnoremap K i<CR><Esc>==

  " reselect block after indenting
  vnoremap < <gv
  vnoremap > >gv

  " disable F1
  noremap  <F1> <Esc>
  inoremap <F1> <Esc>
  vnoremap <F1> <Esc>

endif

