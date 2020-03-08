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

if empty(glob('~/.vim/undo/'))
  silent !mkdir ~/.vim/undo
endif

if empty(glob('~/.vim/backup/'))
  silent !mkdir ~/.vim/backup
endif

if empty(glob('~/.vim/swap'))
  silent !mkdir ~/.vim/swap
endif

call plug#begin('~/.vim/plugged')
" Colors
  Plug 'NLKNguyen/papercolor-theme'
  Plug 'ap/vim-css-color'

  " System
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'plasticboy/vim-markdown',                   { 'for': 'markdown' }
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-tbone'
  Plug 'tpope/vim-vinegar'
  Plug 'vim-scripts/npm.vim'
  Plug 'dense-analysis/ale'

  if has('nvim')
    Plug 'Shougo/deoplete.nvim',          { 'do': ':UpdateRemotePlugins' }
  else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
  endif

  " UI
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " Go
  "  Plug 'fatih/vim-go',                    { 'tag': 'v1.8', 'do': ':GoUpdateBinaries'
  Plug 'govim/govim',											{ 'for': 'go' }

  " HTML
  Plug 'mattn/emmet-vim',                 { 'for': ['html', 'css'] }
  Plug 'othree/html5.vim',                { 'for': 'html' }
  Plug 'Valloric/MatchTagAlways',         { 'for': ['html', 'css'] }

  " Javascript
  Plug 'yuezk/vim-js'
  " Plug 'vim-javascript'
  Plug 'herringtondarkholme/yats.vim'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'posva/vim-vue',                   { 'for': 'html' }

  " Language server
  Plug 'prabirshrestha/async.vim'
  Plug 'prabirshrestha/vim-lsp'

call plug#end()

filetype plugin indent on

set conceallevel=0
set linespace=2                 " Increase line-height
set wrap                        " No line break
" set relativenumber              " Enable relative line numbers
set ruler                       " Enable line and row of the cursor
set number                      " Enable Line numbers
set numberwidth=5
set ch=1                        " Height of command line
set noerrorbells                "
set visualbell                  " Disable beeping
set backspace=indent,eol,start
set hidden                      " Enable hidden buffers
set title                       "
set ttyfast                     " Enable Fast terminal connection
set laststatus=2                " Enable status line
set shortmess=I                 " Welcome screen (e.g. no welcome message)
set t_Co=256                    " 256 Colours
set lazyredraw                  " Disable refresh while executing a macro
set showcmd                     " Show partially completed commands
set showmode                    " Show mode
set mousehide                   " Hide mouse while typing
set mouse=a ttymouse=xterm2     " Enable mouse in terminal mode
set synmaxcol=800               " Disable syntax highlighting 800 chars.
set timeoutlen=500              " Timeout for <leader
set scrolloff=3                 " Keep 3 lines of context
set virtualedit=all             " Enable positioning of cursor where no character is
set key=                        " Remove fixed key
set cryptmethod=blowfish        " Set encryption type
set textwidth=0                 " Disable line breaks
set showfulltag                 " Show full tag when autocompleting
set fillchars=diff:⣿,vert:│     " Statusline charactors
set diffopt+=iwhite             " Ignore whitespace in DIFFs
set list                        " Show invisibles (tabs, line endings etc.)
set listchars=tab:▸\ ,eol:¬,trail:·,nbsp:.,extends:❯,precedes:❮ " Choose symbols to show invisibles
set showbreak=+                 " Show line breaks
set splitbelow                  " Split below the current window
set splitright                  " Split right of the current window

" Spell check
set spelllang=en_gb
set dictionary+=~/.vim/dictionary/en_user.txt
set dictionary+=~/.vim/dictionary/en_neu.txt
set dictionary+=~/.vim/dictionary/en_gb.txt
set thesaurus+=~/.vim/thesaurus/en_user.txt
set thesaurus+=~/.vim/thesaurus/en_openthesaurus.txt
set complete+=kspell

set wildmenu                    " Enable better commandline completion
set wildmode=list:longest,list:full   " Complete files like shell

syntax on                 " Syntax Highlighting


set background=dark       " Colorscheme
colorscheme PaperColor

if has("gui_running")
  set guioptions-=T           " Removes top toolbar
  set guioptions-=r           " Removes right hand scrollbar
  set go-=L                   " Removes left hand scroll bar
endif

"" General Settings

let mapleader=","
let maplocalleader="+"

set encoding=utf-8
set fileencoding=utf-8
set modelines=0                 " Disable for security
set autowrite                   " Enable save on file switch
set autoread                    " Enable reload on external change

" Ignore stuff
set wildignore+=*.gem,gems/**
set wildignore+=*/tmp/**
set wildignore+=*/htdocs/css/v/**,*/htdocs/js/v/**
set wildignore+=*/vendor/ruby/**
set wildignore+=*.sqlite3,*.db
set wildignore+=*.png,*.gif,*.jpeg,*.jpg,*.tiff,*.psd
set wildignore+=*.pdf,*.graffle
set wildignore+=*.zip,*.tar,*.tar.gz
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*.so
set wildignore+=*.doc,*.docx,*.xls,*.xlsx,*.ppt,*.pptx,*.gsheet
set wildignore+=*.mp4,*.mov,*.m4v,*.mp3
set wildignore+=*.dmg
set wildignore+=*.sw?
set wildignore+=.DS_Store,Icon
set wildignore+=*.pages
set wildignore+=*/vendor/bundle/**
set wildignore+=*/dist/**
set wildignore+=*/build/assets/**,*/build/development/**,*/build/production/**
set wildignore+=*/node_modules/**
set wildignore+=*/bower_components/**,*/_bower_components/**

" Backup Management
set undodir=$HOME/.vim/undo//
set backupdir=$HOME/.vim/backup//
set backupcopy=yes
set directory=$HOME/.vim/swap//
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

" Folding
set foldenable					  " Enable folding
set foldcolumn=0          " Disable foldcolum
set foldmethod=marker		  " Fold based on marker
set foldlevelstart=20

nnoremap <space> za				" Space Open/Closes folds

nnoremap gp `[v`]
nnoremap gy `[v`]y

nnoremap <leader>ra :tabdo exec "windo e!"

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

" Get off my lawn
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>

" Keep the window centered
noremap G Gzzzv
noremap n nzzzv
noremap N Nzzzv
noremap } }zzzv
noremap { {zzzv

" Close all buffers
nnoremap XX :qa<CR>

" VimDiff
nnoremap <leader>dj ]c
nnoremap <leader>dk [c

" Normal mode - add lines
nnoremap gn o<ESC>k
nnoremap gN O<ESC>j

" Change to the folder of the current file
nnoremap <silent> <leader>ccc :cd %:p:h<CR>:pwd<CR>

" Toggle wrap
nnoremap <leader>tw :call ToggleWrap()<CR>

" Extended TextObjects
" http://connermcd.com/blog/2012/10/01/extending-vim%27s-text-objects/
"
" Not sure what this really is but lets try it.
let pairs = { ":" : ":",
      \ "." : ".",
      \ "<bar>" : "<bar>",
      \ "*" : "*",
      \ "-" : "-",
      \ "_" : "_" }

for [key, value] in items(pairs)
  exe "nnoremap ci".key." T".key."ct".value
  exe "nnoremap ca".key." F".key."cf".value
  exe "nnoremap vi".key." T".key."vt".value
  exe "nnoremap va".key." F".key."vf".value
  exe "nnoremap di".key." T".key."dt".value
  exe "nnoremap da".key." F".key."df".value
  exe "nnoremap yi".key." T".key."yt".value
  exe "nnoremap ya".key." F".key."yf".value
endfor

" Faster linewise scrolling
noremap <C-e> 3<C-e>
noremap <C-y> 3<C-y>

" Escape/Unescape HTML entities
noremap <leader>he :call HtmlEscape()<CR>
noremap <leader>hue :call HtmlEscape()<CR>

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

" Open the current file with Firefox, Chrome or Safari
noremap <silent> <leader>ff :! firefox %:p<CR>
noremap <silent> <leader>gc :! open -a google\ chrome %:p<CR>
" noremap <silent> <leader>sf :! open -a safari.app %:p<CR>

" Quick toggle between buffers
noremap <leader>j :b#<CR>

" Command mode
nnoremap <space> :

" Set spell checker to `s`
" zg (good), zG (good temp), zw (wrong), zW (wrong temp)
nnoremap <silent> <leader>s :set spell!<CR>

" Open .vimrc in new buffer, reload .vimrc
nnoremap <leader>v :e $MYVIMRC<CR>
nnoremap <leader>vb :e ~/.vimrc.bundles<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" Enlarge/shrink splits
noremap <kPlus> <C-w>+
noremap <kMinus> <C-w>-
noremap <kDivide> <C-w><
noremap <kMultiply> <C-w>>

" Indentation in VISUAL mode
vnoremap > >gv
vnoremap < <gv
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" Open a quickfix window for the last search
nnoremap <silent> <leader>? :execute 'vimgrep /'.@/.'/g %'<CR>:copent<CR>

" Map ALT-Tab to auto complete
inoremap <A-Tab> <C-N>
inoremap <A-S-Tab> <C-P>

" Complete all buffers
set complete=.,w,b,u,t
set completeopt=longest,menuone,preview

" Delete all buffers
nnoremap <silent> <leader>da :exec "1," . bufnr('$') . "bd"<CR>

" Toggle set list
nnoremap <leader>1 :set list!<CR>

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Mapping for easier OmniCompletion
inoremap <C-]> <C-X><C-]>
inoremap <C-F> <C-X><C-F>
inoremap <C-D> <C-X><C-D>
inoremap <C-L> <C-X><C-L>
inoremap <C-O> <C-X><C-O>

" Indent the whole source code
nnoremap <leader>f gg=G


"" Plugins

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 0
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_theme = 'papercolor'
let g:airline#extensions#tabline#enabled = 0

let g:airline#extensions#branch#empty_message = "No SCM"
let g:airline#extensions#whitespace#enabled   = 1
let g:airline#extensions#whitespace#symbol    = '!'
let g:airline#extensions#whitespace#checks    = [ 'indent', 'trailing' ]
let g:airline#extensions#whitespace#max_lines = 20000
let g:airline#extensions#whitespace#trailing_format = 'trailing[%s]'
let g:airline#extensions#whitespace#mixed_indent_format = 'mixed-indent[%s]'

" Emmet
" vim-jsx-pretty
let g:vim_jsx_pretty_highlight_close_tag = 1

" ale
let g:ale_linters_explicit = 1
let g:ale_linters = {
			\ 'vue': ['eslint']
			\}

let g:ale_fixers = {
			\ 'javascript': ['prettier'],
			\ 'typescript': ['prettier', 'tslint'],
			\ 'vue': ['eslint'],
			\ 'scss': ['prettier'],
			\ 'reason': ['refmt']
			\}
let g:ale_fix_on_save = 1

" Deoplete
let g:deoplete#enable_at_startup = 1
call deoplete#custom#option('sources', {
      \ '_': 'ale'
      \})


" Prettier
au FileType javascript setlocal formatprg=prettier
au FileType javascript.jsz setlocal formatprg=prettier
au FileType typescript setlocal formatprg=prettier\ --parser\ typescript
au FileType scss setlocal formatprg=prettier\ --parser\ css
au FileType css setlocal formatprg=prettier\ --parser\ css

"" Functions

" Escape HTML
function! HtmlEscape()
  silent s/&/\&amp;/eg
  silent s/</\&lt;/eg
  silent s/>/\&gt;/eg
endfunction

function! HtmlUnEscape()
  silent s/&lt;/</eg
  silent s/&gt;/>/eg
  silent s/&amp;/\&/eg
endfunction

autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css
autocmd BufRead,BufNewFile *.blade.php set filetype=php.html.javascript.css

autocmd FileType vue syntax sync fromstart

" Local config
if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif
