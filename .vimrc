set nocompatible
filetype off

set rtp +=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'flazz/vim-colorschemes'
call vundle#end()

let g:airline_powerline_fonts = 1

filetype plugin indent on

"Formating Options
set number
syntax on
colorscheme jellybeans 
let g:jellybeans_background_color_256='NONE'
set tabstop=4
set backspace=indent,eol,start
set mouse=a


set laststatus=2

"Insert mode remappings
imap <C-l> <Esc>l

"Visual mode remappings
vnoremap <C-c> "+y
autocmd VimLeave * call system("xsel -ib", getreg('+'))

"Normal mod remappings
nnoremap <C-v> "+p
