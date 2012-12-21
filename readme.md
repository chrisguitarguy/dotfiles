Dotfiles
========

My dotfiles.

If you use vim, bash, ack (ack-grep, if you prefer), and OSX or Ubuntu you may
like them.

## Installation

Remove or move your `.bashrc`, `.bash_profile`, `.ackrc`, and `.vimrc` files and
`VIMHOME` directory. Then...

    $ cd ~
    $ git clone --recursive git://github.com/chrisguitarguy/dotfiles.git .dotfiles
    $ cd .dotfiles
    $ ./manage.py
    $ source ~/.bashrc

This will attempt to symlink everything.
