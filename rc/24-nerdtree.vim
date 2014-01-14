" nerdtree
if !exists('vimto#disable_mapping')
  nmap <F8> :NERDTreeToggle<CR>
endif

" show hidden by default, but ignore some things
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\~$', '\.swp$', '\.git$', '\.hg', '\.svn', '\.bzr', '.DS_Store']

" close nerd if it's the only window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

