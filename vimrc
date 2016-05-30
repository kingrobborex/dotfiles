" Basic
if &compatible
  set nocompatible
endif

filetype off

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
" Colors
  Plug  'fent/vim-frozen'
  Plug  'altercation/vim-colors-solarized'

  " System
  Plug  'editorconfig/editorconfig-vim'
  Plug  'KabbAmine/gulp-vim',               { 'on': ['Gulp', 'GulpExt', 'GulpFile', 'GulpTasks']} | Plug 'tope/vim-dispatch'
  Plug  'mattn/webapi-vim' | Plug  'mattn/gist-vim',                   { 'on': 'Gist'}
  Plug  'patrickkettner/bower.vim',         { 'on': 'Bower' }
  Plug  'tpope/vim-dispatch'
  Plug  'tpope/vim-endwise'
  Plug  'tpope/vim-fugitive'
  Plug  'tpope/vim-surround'
  Plug  'vim-scripts/npm.vim'

  " UI
  Plug  'ervandew/supertab'
  Plug  'scrooloose/nerdtree',              { 'on': 'NERDTreeToggle' }
  Plug  'Xuyuanp/nerdtree-git-plugin'

  " HTML
  Plug  'mattn/emmet-vim',                  { 'for': ['html', 'erb'] }

  " Ruby / Rails
  Plug  'skalnik/vim-vroom'
  Plug  'sunaku/vim-ruby-minitest',         { 'for': ['ruby'] }
  Plug  'tpope/vim-bundler'
  Plug  'tpope/vim-rails',                  { 'for': ['ruby'] }, { 'on': ['Rails'] }
  Plug  'tpope/vim-rbenv'
  Plug  'vim-ruby/vim-ruby',                { 'for': ['ruby'] }

call plug#end()

filetype plugin indent on

syntax on                 " Syntax Highlighting

set background=dark       " Colorscheme
colorscheme Tomorrow-Night

if has("gui_running")
  set guioptions-=T           " Removes top toolbar
  set guioptions-=r           " Removes right hand scrollbar
  set go-=L                   " Removes left hand scroll bar
  colorscheme duotone-darksea
endif

"" General Settings

let mapleader=","
let maplocalleader="+"

set encoding=utf-9
set fileencoding=utf-8
set modelines=0                 " Disable for security
set autowrite                   " Enable save on file switch
set autoread                    " Enable reload on external change
set conceallevel=0
set linespace=2                 " Increase line-height
set nowrap                      " No line break
set relativenumber              " Enable relative line numbers
set ruler                       " Enable line and row of the cursor
set number                      " Enable Line numbers
set ch=1                        " Height of command line
set noerrorbells                "
set visualbell                  " Disable beeping
set backspace=indent,eol,start
set hidden                      " Enable hidden buffers
set title                       "
set ttyfast                     " Enable Fast terminal connection
set laststatus=2                " Enable status line
set shortmess=ao0tI             " Welcome screen (e.g. no welcome message)
set t_Co=256                    " 256 Colours
set lazyredraw                  " Disable refresh while executing a macro
set showcmd                     " Show partially completed commands
set showmode                    " Show mode
set mousehide                   " Hide mouse while typing
set mouse=a ttymouse=xterm2     " Enable mouse in terminal mode
set synmaxcol=800               " Disable syntax highlighting 800 chars.
set timeoutlen=500              " Timeout for <leader>

" Session Management
let g:session_directory = "~/.vim/sessions"
let g:session_autoload  = "no"
let g:session_autosave  = "no"
let g:session_command_aliases = 1
nnoremap <leader>so :OpenSession
nnoremap <leader>ss :SaveSession
nnoremap <leader>sd :DeleteSession<CR>
nnoremap <leader>sx :CloseSession<CR>
" sessionoptions=blank,buffers,curdir,folds,globals,help,localoptions,resize,slash,tabpages,unix,winpos,winsize

" Backup Management
set undodir=$HOME/.vim/tmp/undo//
set backupdir=$HOME/.vim/tmp/backup//
set directory=$HOME/.vim/tmp/swap//
set backupskip=/tmp/*,/private/tmp/*
set backup
set writebackup
set noswapfile

" Persistent (G)undo files between sessions
set undofile
set history=1000
set undolevels=100

set updatetime=1000             " 1 second

" Tabs and indent
set tabstop=2             " Number of visual spaces per TAB
set shiftwidth=2
set softtabstop=2         " Number of spaces in tab when editing
set expandtab             " tabs are spaces
set autoindent            " always set indenting on
set copyindent            " copy the previous indentation on autoindenting
set shiftround
set smartindent cinwords=if,elif,else,for,while,def,class
set smarttab

" Search
set ignorecase
set smartcase
set incsearch					    " Search as characters are entered
set hlsearch					    " Highlight matches
set wrapscan              " Wrap search at end/beggining of file

" FOLDING
set foldenable					  " Enable folding
set foldmethod =indent		" Fold based on indent level

nnoremap <space> za				" Space Open/Closes folds

"" Plugins

" GIST
let g:gist_detect_filetype      = 1
let g:gist_post_private         = 1

" MUSTACHE & HANDLEBARS
let g:mustache_abbreviations    = 1

" NERDTREE
let g:NERDTreeAutoDeleteBuffer  = 0
let g:NERDTreeMinimalUI         = 1
let g:NERDTreeWinSize           = 20
let g:NERDTreeShowGitStatus     = 1
" let g:NERDTreeShowHidden        = 1

