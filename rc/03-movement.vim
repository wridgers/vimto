" backspace over indent, eol, and start
set backspace=indent,eol,start

" disable the arrow keys
if !exists('vimto#allow_arrows')
  inoremap <Up> <NOP>
  inoremap <Down> <NOP>
  inoremap <Left> <NOP>
  inoremap <Right> <NOP>
  noremap <Up> <NOP>
  noremap <Down> <NOP>
  noremap <Left> <NOP>
  noremap <Right> <NOP>
endif

