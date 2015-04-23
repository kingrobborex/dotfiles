" COLORS
colorscheme desert

syntax enable

set completefunc=syntaxcomplete#Complete


" TABS & SPACES
set tabstop=2           " Number of visual spaces per TAB
set shiftwidth=2
set softtabstop=2       " Number of spaces in tab when editing
set expandtab           " tabs are spaces

" UI CONFIG
set number					" Show line numbers
set cursorline					" Highlight current line

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

call plug#begin()
    Plug    'captbaritone/better-indent-support-for-php-with-html'
    Plug    'ervandew/supertab'
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
    Plug    'editorconfig/editorconfig-vim'

call plug#end()
