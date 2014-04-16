" colorscheme
if !exists('vimto#term_theme')
  let g:vimto#term_theme = 'Tomorrow-Night'
endif

if !exists('vimto#term_background')
  let g:vimto#term_background = 'dark'
endif

if !exists('vimto#gui_theme')
  let g:vimto#gui_theme = 'Tomorrow'
endif

if !exists('vimto#gui_background')
  let g:vimto#gui_background = 'light'
endif

if !exists('vimto#gui_transparent')
  let g:vimto#gui_transparent = 0
endif

" gui
if !exists('vimto#minimal_gui')
  let g:vimto#minimal_gui = 0
endif

if !exists('vimto#enable_tabline')
  let g:vimto#enable_tabline = 1
endif

" tabs
if !exists('vimto#tab_size')
  let g:vimto#tab_size = 4
endif

" misc
if !exists('vimto#disable_arrows')
  let g:vimto#disable_arrows = 0
endif

if !exists('vimto#disable_mapping')
  let g:vimto#disable_mapping = 0
endif

if !exists('vimto#enable_hardmode')
  let g:vimto#enable_hardmode = 0
endif

" vimproc
if !exists('vimto#enable_vimproc')
  let g:vimto#enable_vimproc = 0
endif

