" these are gui related settings
if has('gui_running')
  " set the colorscheme
  execute 'colorscheme '  . g:vimto#gui_theme
  execute 'set background='  . g:vimto#gui_background

  " TODO: make this configurable
  set guifont=Anonymous\ Pro:h11

  " TODO: make this configurable
  set lines=35 columns=160

  if g:vimto#gui_transparent
    set transparency=5
  endif

  " retina'ness
  if has('mac')
    " TODO: make this configurable
    set guifont=Anonymous\ Pro:h14
  endif

  " optionally strip down the gui
  if g:vimto#minimal_gui
    " remove toolbar
    set guioptions-=T

    " remove scrollbars
    set guioptions-=L
    set guioptions-=r
  endif

endif

