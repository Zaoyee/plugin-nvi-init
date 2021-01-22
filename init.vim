set nu
syntax on
set hlsearch
set incsearch
set scrolloff
set autoread
set backspace
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

call plug#begin()
" the following is the vim plugins

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'valloric/youcompleteme'

call plug#end()

" NERDTree setuep
autocmd VimEnter * NERDTree | wincmd p
let g:NERDTreeWinSize=20
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

