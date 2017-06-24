set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/vimplugins')

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-syntastic/syntastic'

call vundle#end()
filetype plugin on

"
" ...oooOOO+ GENERAL CONFIGURATION +OOOooo... "
"
let mapleader = ' '

set noswapfile


set list
set listchars=tab:▸\ ,eol:↲,nbsp:␣,trail:•,extends:⟩,precedes:⟨
nmap <leader>l :set list!<CR>


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

set laststatus=2
