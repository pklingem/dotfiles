dotfiles
========

type this:

    shopt -s extglob dotglob
    ln -s ~/apps/dotfiles/!(README.md|.git) ~/
    mv !(new) new
    shopt -u extglob dotglob
