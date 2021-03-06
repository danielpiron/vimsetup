set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/vimplugins')

Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'
Plugin 'davidhalter/jedi-vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-syntastic/syntastic'

call vundle#end()
filetype plugin on

"
" ...oooOOO+ GENERAL CONFIGURATION +OOOooo... "
"
"
syntax on

set autoindent
set smartindent
set backspace=indent,eol,start


colorscheme molokai

let mapleader = ' '

set noswapfile

set wildmenu
set wildmode=longest:list,full

set list
set listchars=tab:▸\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨
nmap <leader>l :set list!<CR>

set incsearch
set hlsearch
set ignorecase
set smartcase

" Turn off highlighting with double space tap
nnoremap <silent> <space><space> :noh<CR>

" Save the buffer with double esc tap
nnoremap <silent> <esc><esc> :w<CR>

" Move through buffers with left and right arrow keys
nnoremap <silent> <left> :bprev<CR>
nnoremap <silent> <right> :bnext<CR>

nnoremap <silent> <leader>p :diffput<CR>

nnoremap <silent> <leader>f :%!clang-format -style=WebKit<CR>

" ...oooOOO+ PLUGIN CONFIGURATION +OOOooo... "

" +++ NERDTree +++ "

" Open NERDTree if 'vim' is run without file arguments
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Close NERDTree if it's the last window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

map <silent> <F3> :NERDTreeFind<CR>
map <silent> <F4> :NERDTreeToggle<CR>

let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrows = 1
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeAutoDeleteBuffer = 1

" +++ Airline +++ "

let g:airline#extensions#tabline#enabled = 1
set laststatus=2
