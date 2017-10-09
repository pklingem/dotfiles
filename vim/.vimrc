set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-fugitive'
Plug 'terryma/vim-multiple-cursors'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-dispatch'
Plug 'godlygeek/tabular'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ctrlpvim/ctrlp.vim'
" let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_user_command = ['ag %s -l --hidden --nocolor -g ""']
let g:ctrlp_use_caching = 0
Plug 'rking/ag.vim'
Plug 'tpope/vim-unimpaired'
Plug 'ervandew/supertab'
Plug 'scrooloose/syntastic'
Plug 'vim-scripts/ZoomWin'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'bronson/vim-trailing-whitespace'
Plug 'kchmck/vim-coffee-script'
Plug 'elixir-lang/vim-elixir'
Plug 'ap/vim-css-color'
Plug 'tpope/vim-surround'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'vim-scripts/tlib'
Plug 'garbas/vim-snipmate'
Plug 'Lokaltog/vim-easymotion'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-scripts/keepcase.vim'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
Plug 'MarcWeber/vim-addon-local-vimrc'
Plug 'tpope/vim-vinegar'
Plug 'mattn/webapi-vim'
Plug 'mattn/gist-vim'
Plug 'sjl/vitality.vim'
Plug 'mtth/scratch.vim'
Plug 'tpope/vim-endwise'
Plug 'ryanss/vim-hackernews'
Plug 'pangloss/vim-javascript'
Plug 'jelera/vim-javascript-syntax'
Plug 'mxw/vim-jsx'
Plug 'digitaltoad/vim-jade'
Plug 'mattn/emmet-vim'
Plug 'ryanoasis/vim-devicons'
Plug 'jiangmiao/auto-pairs'
Plug 'leafgarland/typescript-vim'

call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" python from powerline.vim import setup as powerline_setup
" python powerline_setup()
" python del powerline_setup
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" https://fedoramagazine.org/add-power-terminal-powerline/
" python3 from powerline.vim import setup as powerline_setup
" python3 powerline_setup()
" python3 del powerline_setup
" set laststatus=2 " Always display the statusline in all windows
" set showtabline=2 " Always display the tabline, even if there is only one tab
" set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
" set t_Co=256
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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
set wildignore+=*/dist/*/node_modules/*                                          " Ignore node directories
set wildignore+=*.swp,*~,._*                                                     " Disable temp and backup files
set backupdir^=~/.vim/_backup//                                                  " where to put backup files.
set directory^=~/.vim/_temp//                                                    " where to put swap files.
set autoread  " auto-load files that have been edited outside of vim, but not inside
set laststatus=2 " always show the statusline
" resize splits with mouse
set mouse+=a
set ttymouse=xterm2
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","
map <leader>n :NERDTreeToggle<CR>
map <leader>f :NERDTreeFind<CR>
map <leader>z :ZoomWin<CR>
map <leader>k :Explore<CR>
map <leader>r :call Preserve("%!ramda-destruct")<CR>
map <leader>q :q<CR>
map <leader>s :w<CR>
map <leader>r :%!ramda-destruct<CR>

" Docker
map <leader>k :%!docker-compose kill<CR>
map <leader>b :%!docker-compose build<CR>
map <leader>u :%!docker-compose up -d<CR>

" Preserve
function! Preserve(command)
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  execute a:command
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction

" Toggle paste with <leader>p
nnoremap <leader>p :call PasteToggle()<cr>
function! PasteToggle()
    if &paste
        setlocal nopaste
    else
        setlocal paste
    endif
endfunction

" Toggle hidden with <leader>h
nnoremap <leader>h :call HiddenToggle()<cr>
function! HiddenToggle()
    if &hidden
        setlocal nohidden
    else
        setlocal hidden
    endif
endfunction

let g:netrw_liststyle=3
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-gitgutter color improvements
highlight clear SignColumn
" this one isn't working
"highlight link SignColumn CursorColumn
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable
set background=dark
colorscheme solarized
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
let NERDTreeMinimalUI=1
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

highlight! link Visual CursorLine
