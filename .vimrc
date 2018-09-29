set nocompatible

set laststatus=2

let NERDTreeIgnore = ['\.pyc$']

"Disable .swp files
set noswapfile

set timeoutlen=1000

set autoindent
syntax on
set ts=2
set shiftwidth=2
set background=dark
set number
set hlsearch
set incsearch
set cursorline
set wildmenu
set modeline

set modelines=5
set mouse=a


inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf

nnoremap <F5> :Autoformat<CR>
nnoremap <F3> :noh<CR>
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

"Lazy reload screen, this don't redraw full screen
"But this make too bugs i screen buffor
"set lazyredraw

"For performance
" set ttyfast

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

	" Themes
	Plugin 'dikiaap/minimalist'

	Plugin 'airblade/vim-gitgutter'
	Plugin 'tpope/vim-fugitive'

	Plugin 'Chiel92/vim-autoformat'
	Plugin 'SirVer/ultisnips'
	Plugin 'honza/vim-snippets'
	
	Plugin 'ryanoasis/vim-devicons'

	Plugin 'scrooloose/nerdtree'

	Plugin 'chr4/nginx.vim'
	Plugin 'mattn/emmet-vim'

	Plugin 'tomtom/tcomment_vim'

call vundle#end()

execute pathogen#infect()


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0



nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

color minimalist "wellsokai monokai
colorscheme minimalist "wellsokai monokai

set laststatus=2
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P

" theme minimalist
let g:airline_theme='minimalist'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1


let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=1
let g:airline_powerline_fonts=1
let g:Powerline_symbols='unicode'

set encoding=utf8
set fencs=utf8
if has( 'gui_running' )
	set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete:h12
	set guioptions-=L
endif

map <C-n> :NERDTreeToggle<CR>
map <F3> :noh<CR>

highlight ColorColumn ctermbg=black
set colorcolumn=100

let g:webdevicons_enable=1
let g:webdevicons_enable_nerdtree=1
let g:webdevicons_enable_airline_statusline=1

let NERDTreeIgnore = [ '\.pyc$' ]

autocmd Filetype yaml setlocal ts=2 sw=2 expandtab

"ino " ""<left>
"ino ' ''<left>
ino ( ()<left>
ino [ []<left>
ino { {}<left>
ino {<CR> {<CR>}<ESC>O

"execute pathogen#infect()
"call pathogen#helptags()
