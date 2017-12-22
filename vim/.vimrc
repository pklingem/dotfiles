set nocompatible   " be iMproved, required
set nobackup       " no backup files
set nowritebackup  " only in case you don't want a backup file while editing
set noswapfile     " no swap files

filetype off     " required
let mapleader = ","
let g:netrw_liststyle=3
syntax enable " Turn on syntax highlighting allowing local overrides

source ~/.vimrc.d/plugins
source ~/.vimrc.d/powerline
source ~/.vimrc.d/variables
source ~/.vimrc.d/mappings
source ~/.vimrc.d/preserve
source ~/.vimrc.d/paste
source ~/.vimrc.d/line-highlighting
