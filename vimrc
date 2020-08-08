set number
set expandtab
set smartindent
set cindent
set autoindent
set nocompatible
set softtabstop=2
set tabstop=2
set shiftwidth=2
set mouse=a
set clipboard=unnamedplus
set background=dark
set nocompatible

syntax enable

colorscheme gruvbox

map <F5> :!./%< <CR>
map <F8> :!g++ -std=c++17 -Wall -Wshadow -Wextra -DLOCAL -fmax-errors=2 -fsanitize=address -fsanitize=undefined -D__GLIBCXX_DEBUG -pedantic % -o %< <CR>
map <F9> :!g++ -std=c++17 -O2 -o %< % <CR>


au BufNewFile *.cc 0r ~/.vim/tpl.cpp


filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'SirVer/ultisnips'
call vundle#end()
filetype plugin indent on
