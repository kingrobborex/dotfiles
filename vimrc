" COLORS
colorscheme desert

syntax enable


" TABS & SPACES
set tabstop=4           " Number of visual spaces per TAB
set shiftwidth=4
set softtabstop=4       " Number of spaces in tab when editing
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

call plug#begin()
    Plug    'scrooloose/nerdtree', { 'on' : 'NERDTreeToggle' }
    Plug    'tpope/vim-endwise'
    Plug    'tpope/vim-fugitive'
    Plug    'tpope/vim-rails'
    Plug    'tpope/vim-surround'
call plug#end()
