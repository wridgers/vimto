" unite
let g:unite_data_directory = '~/.vim/.cache/unite'
let g:unite_source_rec_max_cache_files = 500000
let g:unite_source_history_yank_enable = 1
let g:unite_enable_start_insert = 5
let g:unite_split_rule = "botright"
let g:unite_force_overwrite_statusline = 0
let g:unite_winheight = 25

" custom source
call unite#custom_source('file_rec,file_rec/async,file_mru,file,buffer,grep',
      \ 'ignore_pattern', join([
      \ '\.git/',
      \ 'vendor/',
      \ 'node_modules/',
      \ ], '\|'))

" fuzzy matcher and sort everything
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])

" max match length
let g:unite_matcher_fuzzy_max_input_length = 50

if !g:vimto#disable_mapping
  " basic unite mappings
  nnoremap <leader>b :Unite buffer<cr>
  nnoremap <leader>r :Unite file_mru<cr>
  nnoremap <leader>t :Unite tag<cr>
  nnoremap <leader>y :Unite history/yank<cr>

  if g:vimto#enable_vimproc
    " if we've got vimproc, use async
    nnoremap <leader>f :Unite file_rec/async<cr>
  else
    " fallback to (slower) file_rec
    nnoremap <leader>f :Unite file_rec<cr>
  endif
endif

