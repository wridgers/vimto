" hardmode!
if g:vimto#enable_hardmode
  autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
endif

