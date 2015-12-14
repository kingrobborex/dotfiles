set nocompatible        " Disable vi-compatibility
set linespace=8

" COLORS
syntax enable

set completefunc=syntaxcomplete#Complete


" TABS & SPACES
set tabstop=2           " Number of visual spaces per TAB
set shiftwidth=2
set softtabstop=2       " Number of spaces in tab when editing
set expandtab           " tabs are spaces
set autoindent          " always set indenting on
set copyindent          " copy the previous indentation on autoindenting

" UI CONFIG
set number					      " Show line numbers
set cursorline					  " Highlight current line

filetype indent on				" Load filetype indent files

set lazyredraw					" Redraw only when we need to
set showmatch					" Highlight matching [{()}]

" SEARCHING
set incsearch					" Search as characters are entered
set hlsearch					" Highlight matches

" FOLDING
set foldenable					" Enable folding
set foldmethod =indent			" Fold based on indent level

nnoremap <space> za				" Space Open/Closes folds

" MISC
set noerrorbells
set novisualbell
set spell

setlocal spell spelllang=en_gb

" NERDTREE
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree()) | q | endif

let g:NERDTreeWinSize = 20
let g:NERDTreeShowGitStatus = 1

" "
map <Leader>t :!phpunit %<cr>
set encoding=utf-8

if has("gui_running")
  set guioptions-=T       " Removes top toolbar
  set guioptions-=r       " Removes right hand scrollbar
  set go-=L               " Removes left hand scroll bar
endif

call plug#begin()
  Plug    'captbaritone/better-indent-support-for-php-with-html'
  Plug    'editorconfig/editorconfig-vim'
  Plug    'ervandew/supertab'
  Plug    'joonty/vdebug'
  Plug    'scrooloose/nerdtree', { 'on' : 'NERDTreeToggle' }
  Plug    'skalnik/vim-vroom'
  Plug    'sunaku/vim-ruby-minitest'
  Plug    'tpope/vim-bundler'
  Plug    'tpope/vim-endwise'
  Plug    'tpope/vim-fugitive'
  Plug    'tpope/vim-rails'
  Plug    'tpope/vim-rbenv'
  Plug    'tpope/vim-surround'
  Plug    'vim-ruby/vim-ruby'
  Plug    'Xuyuanp/nerdtree-git-plugin'
call plug#end()
