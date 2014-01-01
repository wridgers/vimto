" these are gui related settings
if has('gui_running')

  " TODO: make this configurable
  set guifont=Anonymous\ Pro:h11

  " TODO: make this configurable
  set lines=35 columns=160

  " retina'ness
  if has('mac')
    " TODO: make this configurable
    set guifont=Anonymous\ Pro:h16

    " TODO: make this configurable
    set transparency=5
  endif

  if exists('vimto#minimal_gui')
    " remove toolbar
    set guioptions-=T

    " remove scrollbars
    set guioptions-=L
    set guioptions-=r
  endif

endif

