if has('lua')
  " neocomplete
  let g:neocomplete#enable_at_startup = 1

  " smartcase
  let g:neocomplete#enable_ignore_case = 1
  let g:neocomplete#enable_smart_case = 1

  let g:neocomplete#max_list = 100
  let g:neocomplete#auto_completion_start_length = 2
  let g:neocomplete#manual_completion_start_length = 2

  let g:neocomplete#enable_auto_select = 1

  if !exists('g:neocomplete#sources#omni#input_patterns')
    let g:neocomplete#sources#omni#input_patterns = {}
  endif
  let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
  let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
  let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

else
  " enable neocomplcache
  let g:neocomplcache_enable_at_startup = 1

  " smartcase
  let g:neocomplcache_enable_ignore_case = 1
  let g:neocomplcache_enable_smart_case = 1

  let g:neocomplcache_max_list = 100
  let g:neocomplcache_auto_completion_start_length = 2
  let g:neocomplcache_manual_completion_start_length = 2

  " auto select first suggestion
  let g:neocomplcache_enable_auto_select = 1

  " enable heavy omni completion.
  if !exists('g:neocomplcache_omni_patterns')
    let g:neocomplcache_omni_patterns = {}
  endif
  let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
  let g:neocomplcache_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
  let g:neocomplcache_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

endif

" tab completion
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

