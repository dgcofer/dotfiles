"set nocompatible
filetype off

call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
Plug 'fatih/vim-go', {'for': 'go'}
Plug 'cohama/lexima.vim'

call plug#end()

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t' 

filetype plugin indent on
let mapleader = ","

"Formating Options
set number
syntax on
colorscheme jellybeans
set tabstop=4
set shiftwidth=4
set expandtab
set backspace=indent,eol,start
set mouse=a

"Make NeoVim Transparent
hi Normal ctermbg=none
hi EndOfBuffer ctermbg=none

set laststatus=2

"Insert mode remappings
imap <C-l> <Esc>l
inoremap <C-v> <C-R>+

"Visual mode remappings
vnoremap <C-c> "+y
autocmd VimLeave * call system("xsel -ib", getreg('+'))

"Normal mod remappings
"nnoremap <C-v> "+p
