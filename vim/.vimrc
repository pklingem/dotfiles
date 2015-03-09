set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
" alternatively, pass a path where Vundle should install bundles
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-fugitive'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-dispatch'
Plugin 'godlygeek/tabular'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'kien/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'tpope/vim-unimpaired'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/syntastic'
Plugin 'vim-scripts/ZoomWin'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'kchmck/vim-coffee-script'
Plugin 'elixir-lang/vim-elixir'
Plugin 'ap/vim-css-color'
Plugin 'tpope/vim-surround'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'vim-scripts/tlib'
Plugin 'garbas/vim-snipmate'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-scripts/keepcase.vim'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
Plugin 'MarcWeber/vim-addon-local-vimrc'
Plugin 'tpope/vim-vinegar'
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'
Plugin 'sjl/vitality.vim'
Plugin 'mtth/scratch.vim'
Plugin 'tpope/vim-endwise'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set exrc   " enable per-directory .vimrc files
set secure " disable unsafe commands in local .vimrc files
set number            " Show line numbers
set ruler             " Show line and column number
syntax enable         " Turn on syntax highlighting allowing local overrides
set encoding=utf-8    " Set default encoding to UTF-8
set nowrap                        " don't wrap lines
set tabstop=2                     " a tab is two spaces
set shiftwidth=2                  " an autoindent (with <<) is two spaces
set expandtab                     " use spaces, not tabs
set list                          " Show invisible characters
set backspace=indent,eol,start    " backspace through everything in insert mode
set listchars=""                  " Reset the listchars
set listchars=tab:\ \             " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.            " show trailing spaces as dots
set listchars+=extends:>          " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
set listchars+=precedes:<         " The character to show in the last column when wrap is
                                  " off and the line continues beyond the left of the screen
set hlsearch    " highlight matches
set incsearch   " incremental searching
set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.rbo,*.class,.svn,*.gem              " Disable output and VCS files
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz                          " Disable archive files
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*     " Ignore bundler and sass cache
set wildignore+=*/tmp/librarian/*,*/.vagrant/*,*/.kitchen/*,*/vendor/cookbooks/* " Ignore librarian-chef, vagrant, test-kitchen and Berkshelf cache
set wildignore+=*/tmp/cache/assets/*/sprockets/*,*/tmp/cache/assets/*/sass/*     " Ignore rails temporary asset caches
set wildignore+=*.swp,*~,._*                                                     " Disable temp and backup files
set backupdir^=~/.vim/_backup//                                                  " where to put backup files.
set directory^=~/.vim/_temp//                                                    " where to put swap files.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>n :NERDTreeToggle<CR>
map <leader>f :NERDTreeFind<CR>
map <leader>z :ZoomWin<CR>
map <leader>k :Explore<CR>
let g:netrw_liststyle=3
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-gitgutter color improvements
highlight clear SignColumn
" this one isn't working
"highlight link SignColumn CursorColumn
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let s:uname = system("echo -n \"$(uname)\"")
if !v:shell_error && s:uname == "Linux"
endif

if !v:shell_error && s:uname == "Darwin"
  syntax enable
  set background=dark
  colorscheme solarized
  let g:solarized_termcolors=256
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Prevent the cursor from moving to the edge of the window
set scrolloff=5
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn line highlighting on for the active window
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
  " au VimEnter,WinEnter,BufWinEnter * setlocal cursorcolumn
  " au WinLeave * setlocal nocursorcolumn
augroup END
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set defaults for NERDCommenter
let NERDSpaceDelims=1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-dispatch config
autocmd FileType ruby let b:dispatch = 'bundle exec rspec %'
autocmd FileType coffee let b:dispatch = 'bundle exec guard-jasmine --console=always %'
nnoremap <F9> :Dispatch<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" The following are examples of different formats supported.
" Keep bundle commands between here and filetype plugin indent on.
" scripts on GitHub repos
" Bundle 'tpope/vim-fugitive'
" Bundle 'Lokaltog/vim-easymotion'
" Bundle 'tpope/vim-rails.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" scripts from http://vim-scripts.org/vim/scripts.html
" Bundle 'L9'
" Bundle 'FuzzyFinder'
" scripts not on GitHub
" Bundle 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Bundle 'file:///home/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.
" Put your stuff after this line
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-session config
let g:session_autosave = 'no'
let g:session_autoload = 'no'
