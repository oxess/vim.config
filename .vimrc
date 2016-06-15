set nocompatible

set laststatus=2

set autoindent
syntax on
set ts=2
set shiftwidth=2
set background=dark
set number
set hlsearch
set incsearch
set cursorline

set mouse=a

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

"Lazy reload screen, this don't redraw full screen
"But this make too bugs i screen buffor
"set lazyredraw

"For performance
set ttyfast

set backspace=2

"set list
"set listchars=tab:▸\

set ruler
set nobackup
set incsearch
set ignorecase

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

	Plugin 'VundleVim/Vundle.vim'

	Plugin 'vim-airline/vim-airline'
	Plugin 'vim-airline/vim-airline-themes'

	Plugin 'airblade/vim-gitgutter'
	Plugin 'tpope/vim-fugitive'

	Plugin 'SirVer/ultisnips'
	Plugin 'honza/vim-snippets'
	
	Plugin 'ryanoasis/vim-devicons'

	Plugin 'scrooloose/nerdtree'

	Plugin 'mattn/emmet-vim'

	Plugin 'tomtom/tcomment_vim'

call vundle#end()

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

color wellsokai "monokai
colorscheme wellsokai "monokai

set laststatus=2
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P

let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=1
let g:airline_powerline_fonts=1
let g:Powerline_symbols='unicode'

set encoding=utf8
set fencs=utf8
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types:h11

map <C-n> :NERDTreeToggle<CR>

let g:webdevicons_enable=1
let g:webdevicons_enable_nerdtree=1
let g:webdevicons_enable_airline_statusline=1


"ino " ""<left>
"ino ' ''<left>
ino ( ()<left>
ino [ []<left>
ino { {}<left>
ino {<CR> {<CR>}<ESC>O

"execute pathogen#infect()
"call pathogen#helptags()
