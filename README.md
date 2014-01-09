#vimto

vimto is an open source vim configuration.

##Installation

vimto is easy to install.

###Linux and Mac OSX - automatically

You can install vimto quickly by curling the `install.sh` bash script, reading
it, and executing it. Piping shell scripts directly into `sh` might be
tempting, but it's a security risk and you shouldn't be doing it.

    $ curl https://raw.github.com/wridgers/vimto/master/tools/install.sh
    $ chmod +x install.sh
    $ ./install.sh

###Linux and Mac OSX - manually

This is pretty much all the above shell script does.

    $ git clone https://github.com/wridgers/vimto ~/.vimto
    $ cd ~/.vimto
    $ git submodule init
    $ git submodule sync
    $ git submodule update --recursive
    $ cp ~/.vimrc ~/.vimrc.backup
    $ cp ~/.vimto/templates/vimrc.template ~/.vimrc

###Windows

Vimto works great on Windows too and the installation isn't much different.

  1. Clone the repository to `$HOME/.vimto` using cmd.exe
  2. git submodule init/sync/update
  3. Copy vimrc.template to `$HOME/_vimrc`

Good to go!

##Bundled plugins

  - [airline](https://github.com/bling/vim-airline)
  - [autoclose](https://github.com/Townk/vim-autoclose)
  - [coffeescript](https://github.com/kchmck/vim-coffee-script)
  - [commandcaps](https://github.com/takac/vim-commandcaps)
  - [commentary](https://github.com/tpope/vim-commentary)
  - [css3](https://github.com/hail2u/vim-css3-syntax)
  - [easyalign](https://github.com/junegunn/vim-easy-align)
  - [easymotion](https://github.com/Lokaltog/vim-easymotion)
  - [editorconfig](https://github.com/editorconfig/editorconfig-vim)
  - [fugitive](https://github.com/tpope/vim-fugitive)
  - [gnupg](https://github.com/jamessan/vim-gnupg)
  - [golang](https://github.com/jnwhiteh/vim-golang)
  - [hardmode](https://github.com/wikitopian/hardmode)
  - [html5](https://github.com/othree/html5.vim)
  - [jade](https://github.com/digitaltoad/vim-jade)
  - [javascript](https://github.com/pangloss/vim-javascript)
  - [less](https://github.com/groenewege/vim-less)
  - [localrc](https://github.com/thinca/vim-localrc)
  - [markdown](https://github.com/tpope/vim-markdown)
  - [nerdtree](https://github.com/scrooloose/nerdtree)
  - [pathogen](https://github.com/tpope/vim-pathogen)
  - [rooter](https://github.com/airblade/vim-rooter)
  - [scss](https://github.com/cakebaker/scss-syntax.vim)
  - [startify](https://github.com/mhinz/vim-startify)
  - [supertab](https://github.com/ervandew/supertab)
  - [surround](https://github.com/tpope/vim-surround)
  - [syntastic](https://github.com/scrooloose/syntastic)
  - [tagbar](https://github.com/majutsushi/tagbar)
  - [twig](https://github.com/beyondwords/vim-twig)
  - [unite](https://github.com/Shougo/unite.vim)
  - [unite-tag](https://github.com/tsukkee/unite-tag)
  - [vdebug](https://github.com/joonty/vdebug)
  - [vimproc](https://github.com/Shougo/vimproc.vim)
  - [vimshell](https://github.com/Shougo/vimshell.vim)
  - [ycm](https://github.com/Valloric/YouCompleteMe)

##Bundled themes

  - [badwolf](https://github.com/sjl/badwolf)
  - [base16](https://github.com/chriskempson/base16-vim)
  - [jellybeans](https://github.com/nanotech/jellybeans.vim)
  - [luna](https://github.com/Pychimp/vim-luna)
  - [molokai](https://github.com/tomasr/molokai)
  - [sol](https://github.com/Pychimp/vim-sol)
  - [solarized](https://github.com/altercation/vim-colors-solarized)
  - [tomorrow](https://github.com/chriskempson/vim-tomorrow-theme)
  - [wombat](https://github.com/vim-scripts/wombat256.vim)

##Custom plugins and themes

You want to use your own plugins and themes? No problem! vimto uses pathogen.
Simply clone the repo you want to `~/.vim/plugins` or `~/.vim/themes` and
you're ready.

##Documentation

Work in progress. For now, I recommend reading `rc/11-mapping.vim` to
understand the basic keymappings that vimto introduces, and reading the docs
available for each plugin.

