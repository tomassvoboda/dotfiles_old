" Plug - Vim plugin manager ---------------------------------------------------
call plug#begin('~/.vim/plugged')

Plug 'terryma/vim-expand-region'
Plug 'bling/vim-airline'
Plug 'chriskempson/base16-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'bronson/vim-trailing-whitespace'

" Syntax Plugins
Plug 'JulesWang/css.vim'
Plug 'ap/vim-css-color'
Plug 'cakebaker/scss-syntax.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'othree/html5.vim'
Plug 'rstacruz/vim-closer'
Plug 'kchmck/vim-coffee-script'

" Tpope Plugins (They deserve their own category)
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'

call plug#end()

" User interface --------------------------------------------------------------
" Overides Theme's Line number bg color
autocmd ColorScheme * highlight LineNr ctermfg=darkgrey ctermbg=black

" Set Vim to use 256 colors
set t_Co=256
let base16colorspace=256

" Set theme and background color
set background=dark
colorscheme base16-solarized

" Word wrap
set wrap
set linebreak
set nolist
set textwidth=0
set wrapmargin=0

" Switch syntax highlighting on
syntax on

" Line numbers
set number

" Shows ruler
set ruler

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Don’t show the intro message when starting Vim
set shortmess=atI

" Show the current mode
set showmode

" Show the filename in the window titlebar
set title

" Hides Vim's current mode inplace of Airline's
set noshowmode

" Airline ---------------------------------------------------------------------
" Makes airline display at all times
set laststatus=2

" Makes vim use airline tabs
let g:airline#extensions#tabline#enabled = 1

" Change the seperator to blank
let g:airline_left_sep=''
let g:airline_right_sep=''

" Airline Theme
let g:airline_theme='base16'

" Key Bindings ----------------------------------------------------------------

" vim-expand-region - 'v' to expand region and 'Ctrl + v' to shrink region
" Selections -- 1x'v' - letter, 2x'v' - word, 3x'v' - paragraph
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" Miscellaneous ---------------------------------------------------------------
" Enhance command-line completion
set wildmenu

" Allow backspacing over autoindent, line breaks and the start of insert
set backspace=indent,eol,start

" Allow cursor keys in insert mode
set esckeys

" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_

" Don’t add empty newlines at the end of files
set binary
set noeol

" Show current partial command in the last line of the screen
set showcmd

" When opened file was edited outside of Vim, read it again
set autoread

" Highlight searches
set hlsearch
set incsearch

set visualbell t_vb=

" Use the OS clipboard by default
set clipboard+=unnamedplus

" Disable error bells
set noerrorbells

" Don’t reset cursor to start of line when moving around.
set nostartofline

" Auto Indents
set autoindent
set breakindent

set complete-=i
set smarttab
set nrformats-=octal

set ttimeout

"set visualbell " nebude nam piskat ale na chvili prebarvi obrazovku
"set expandtab
"set tabstop=2

" map  i<html><head><meta charset="UTF-8"></head><body></body></html>[1;5A[1;5Ao
