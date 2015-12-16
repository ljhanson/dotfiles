colorscheme zenburn
syntax on
set nocp
set nowrap
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set showmatch
set vb t_vb=
set hls
set incsearch
set ruler
set ignorecase
set smartcase
set spell
set spelllang=en
set wrapscan
set laststatus=2
set guifont=Source\ Code\ Pro\ for\ Powerline
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
