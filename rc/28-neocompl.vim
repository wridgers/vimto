if has('lua')
  " neocomplete
else
  " enable neocomplcache
  let g:neocomplcache_enable_at_startup = 1

  " smartcase
  let g:neocomplcache_enable_ignore_case = 1
  let g:neocomplcache_enable_smart_case = 1

  " maximum entires in autocomplete list
  let g:neocomplcache_max_list = 100

  " how many characters before autocomplete starts
  let g:neocomplcache_auto_completion_start_length = 2
  let g:neocomplcache_manual_completion_start_length = 2

  " let us complete with *
  let g:neocomplcache_enable_wildcard = 1

  " auto select first suggestion
  let g:neocomplcache_enable_auto_select = 1

  " useful, but can be slow
  let g:neocomplcache_enable_camel_case_completion = 0
  let g:neocomplcache_enable_underbar_completion = 0

  " enable heavy omni completion.
  if !exists('g:neocomplcache_omni_patterns')
    let g:neocomplcache_omni_patterns = {}
  endif
  let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
  let g:neocomplcache_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
  let g:neocomplcache_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

  " tab completion
  inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

endif

