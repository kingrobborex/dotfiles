set nocompatible          " Disable vi-compatibility
set linespace=8

set completefunc=syntaxcomplete#Complete

" TABS & SPACES
set tabstop=2             " Number of visual spaces per TAB
set shiftwidth=2
set softtabstop=2         " Number of spaces in tab when editing
set expandtab             " tabs are spaces
set autoindent            " always set indenting on
set copyindent            " copy the previous indentation on autoindenting

" UI CONFIG
set number					      " Show line numbers
set cursorline					  " Highlight current line

filetype indent on				" Load filetype indent files

set lazyredraw					  " Redraw only when we need to
set showmatch					    " Highlight matching [{()}]

" SEARCHING
set incsearch					    " Search as characters are entered
set hlsearch					    " Highlight matches

" FOLDING
set foldenable					  " Enable folding
set foldmethod =indent		" Fold based on indent level

nnoremap <space> za				" Space Open/Closes folds

" MISC
set noerrorbells
set novisualbell
set spell

setlocal spell spelllang=en_gb

" MUSTACHE & HANDLEBARS
let g:mustache_abbreviations    = 1

" NERDTREE
let g:NERDTreeAutoDeleteBuffer  = 0
let g:NERDTreeMinimalUI         = 1
let g:NERDTreeWinSize           = 20
let g:NERDTreeShowGitStatus     = 1
" let g:NERDTreeShowHidden        = 1

" PHP
let g:php_refactor_command      = 'php ~/.local/bin/refactor.phar'
let g:relatedtest_open_command  = '<C-t>'
let g:relatedtest_open_strategy = 'vsp'
let g:relatedtest_php_tests     = "tests/"

:set wildignore+=**/vendor/**

map <Leader>t :!phpunit %<cr>
set encoding=utf-8

if has("gui_running")
  set guioptions-=T       " Removes top toolbar
  set guioptions-=r       " Removes right hand scrollbar
  set go-=L               " Removes left hand scroll bar
endif

call plug#begin()
" Colors
  Plug  'fent/vim-frozen'
  Plug  'altercation/vim-colors-solarized'

  Plug  'captbaritone/better-indent-support-for-php-with-html'
  Plug  'editorconfig/editorconfig-vim'
  Plug  'ervandew/supertab'
  Plug  'joonty/vdebug'
  Plug  'KabbAmine/gulp-vim',               { 'on': ['Gulp', 'GulpExt', 'GulpFile', 'GulpTasks']} | Plug 'tope/vim-dispatch'
  Plug  'mattn/emmet-vim',                  { 'for': ['mustache', 'blade', 'html', 'php'] }
  Plug  'mustache/vim-mustache-handlebars', { 'for': ['handlebars', 'mustache'] }
  Plug  'patrickkettner/bower.vim'
  Plug  'scrooloose/nerdtree',              { 'on': 'NERDTreeToggle' }
  Plug  'skalnik/vim-vroom'
  Plug  'sunaku/vim-ruby-minitest'
  Plug  'tpope/vim-bundler'
  Plug  'tpope/vim-dispatch'
  Plug  'tpope/vim-endwise'
  Plug  'tpope/vim-fugitive'
  Plug  'tpope/vim-rails'
  Plug  'tpope/vim-rbenv'
  Plug  'tpope/vim-surround'
  Plug  'vim-php/vim-composer'
  Plug  'vim-php/vim-php-refactoring'
  Plug  'vim-ruby/vim-ruby'
  Plug  'vim-scripts/npm.vim'
  Plug  'wdalmut/vim-relatedtest'
  Plug  'Xuyuanp/nerdtree-git-plugin'

  " Unmanaged
  Plug  '~/Documents/Projects/vim-laravel'
call plug#end()

" COLORS
syntax enable
syntax on
"set background=dark
colorscheme frozen


