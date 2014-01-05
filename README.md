#vimto

vimto is an open source vim configuration.

##Installation

vimto is easy to install.

### Linux and Mac OSX - automatically

You can install vimto quickly by curling the `install.sh` bash script, reading
it, and executing it. Piping shell scripts directly into `sh` might be
tempting, but it's a security risk and you shouldn't be doing it.

    $ curl https://raw.github.com/wridgers/vimto/master/tools/install.sh
    $ chmod +x install.sh
    $ ./install.sh

### Linux and Mac OSX - manually

This is pretty much all the above shell script does.

    $ git clone https://github.com/wridgers/vimto ~/.vimto
    $ cd ~/.vimto
    $ git submodule init
    $ git submodule sync
    $ git submodule update
    $ cp ~/.vimrc ~/.vimrc.backup
    $ cp ~/.vimto/templates/vimrc.template ~/.vimrc

### Windows

Vimto works great on Windows too and the installation isn't much different.

  1. Clone the repository to `$HOME/.vimto` using cmd.exe
  2. git submodule init/sync/update
  3. Copy vimrc.template to `$HOME/_vimrc`

Good to go!

## Documentation

Work in progress. For now, I recommend reading `rc/11-mapping.vim` to
understand the basic keymappings that vimto introduces, and reading the docs
available for each plugin.

