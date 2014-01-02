" these are gui related settings
if has('gui_running')
  if !exists('vimto#gui_theme')
    let g:vimto#gui_theme = 'base16-default'
  endif

  " dark or light
  if exists('vimto#background_light')
    set background=light
  else
    set background=dark
  endif

  " set the colorscheme
  execute 'colorscheme '  . g:vimto#gui_theme

  " TODO: make this configurable
  set guifont=Anonymous\ Pro:h11

  " TODO: make this configurable
  set lines=35 columns=160

  if exists('vimto#gui_transparent')
    set transparency=5
  endif

  " retina'ness
  if has('mac')
    " TODO: make this configurable
    set guifont=Anonymous\ Pro:h16
  endif

  " optionally strip down the gui
  if exists('vimto#minimal_gui')
    " remove toolbar
    set guioptions-=T

    " remove scrollbars
    set guioptions-=L
    set guioptions-=r
  endif

endif

