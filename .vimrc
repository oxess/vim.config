set nocompatible

set laststatus=2

set autoindent
syntax on
set ts=2
set background=dark
set number
set hlsearch
set incsearch

"set list
"set listchars=tab:▸\

set ruler
set nobackup
set incsearch
set ignorecase

color monokai

set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P

ino " ""<left>
ino ' ''<left>
ino ( ()<left>
ino [ []<left>
ino { {}<left>
ino {<CR> {<CR>}<ESC>O

"execute pathogen#infect()
"call pathogen#helptags()

"nmap <F8> :TagbarToggle<CR>
"map <C-m> !:make<CR>
"map <C-s> :w<CR>
