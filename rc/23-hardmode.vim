" hardmode!
if exists('vimto#hardmode')
  autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
endif

