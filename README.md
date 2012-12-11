dotfiles
========

type this:

    shopt -s extglob dotglob
    ln -s ~/apps/dotfiles/!(README.md|.git) ~/
    shopt -u extglob dotglob
