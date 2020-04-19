"sebasr vimrc"

" Colors
syntax enable

" Spaces and tabs
set tabstop=4  " 4 space tab
set expandtab  " use spaces for tabs
set softtabstop=4  " 4 space tab
set shiftwidth=4
set modelines=1
filetype indent on
filetype plugin on
set autoindent
set backspace=indent,eol,start

" ui layout
set number  " show line numbers
set nocursorline  " highlight current line
set wildmenu
set lazyredraw
set showmatch  " highlight matching parenthesis
set laststatus=2
set statusline+=%F
set colorcolumn=80  " vertical line at 80 chars
highlight ColorColumn ctermbg=red  " vertical line is red
set list listchars=tab:»·,trail:·,nbsp:·  " display extra whitespace

" searching
set ignorecase  " ignore casing when searching
set incsearch  " search as characters are entered
set hlsearch  " highlight matches

" folding
set foldenable  " enables folding
set foldmethod=indent  "fold based on indent level
set foldlevelstart=99  " open all folds

" backups
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" vim plugin
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()
" airline
set laststatus=2
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_theme = 'zenburn'
" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_left_sep = ''
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_right_sep = ''

