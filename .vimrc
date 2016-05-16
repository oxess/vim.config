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

	Plugin 'SirVer/ultisnips'
	Plugin 'honza/vim-snippets'

	Plugin 'scrooloose/nerdtree'

call vundle#end()

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

color wellsokai "monokai
colorscheme wellsokai "monokai

set laststatus=2
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P

map <C-n> :NERDTreeToggle<CR>

"ino " ""<left>
"ino ' ''<left>
ino ( ()<left>
ino [ []<left>
ino { {}<left>
ino {<CR> {<CR>}<ESC>O

"execute pathogen#infect()
"call pathogen#helptags()
