colorscheme zenburn
syntax enable 			" Turn on syntax highlighting
set nocp                " Turn off vi compatibility
set nowrap              " Turn off line wrapping
set autoindent          " Match existing indent
set smartindent         " Smart autoindenting
set tabstop=4			" Number of visual spaces per Tab
set softtabstop=4		" Number of spaces in Tab when editing
set expandtab			" Tabs are spaces 
filetype indent on      " Load filetype-specific indent files
set wildmenu            " Visual autocomplete for command menu
set shiftwidth=4        " Control how many columns text is indented with the reindent operations (<< and >>) and automatic C-style indentation.
set showmatch           " Highlight matching [{()}]
set vb t_vb=            " Turn off beep/visual flash
set incsearch           " Search as characters are entered
set hlsearch            " Highlight matches set ruler
set ignorecase          " Ignore case when searching
set smartcase           " Follow case if search string has mixed case
set spell               " Turn on spell checking
set spelllang=en        " English language
set wrapscan            " Wrap around file when searching
set laststatus=2        " Set status line to always be on.
set guifont=Source\ Code\ Pro\ for\ Powerline
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
" Powerline status
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
" allows cursor change in tmux mode
if exists('$TMUX')
	let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
	let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" language-specific settings for certain filetypes/file extensions
augroup configgroup
    autocmd!
    autocmd VimEnter * highlight clear SignColumn
    autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md
			   \:call <SID>StripTrailingWhitespaces()
    autocmd FileType java setlocal noexpandtab
    autocmd FileType java setlocal list
    autocmd FileType java setlocal listchars=tab:+\ ,eol:-
    autocmd FileType java setlocal formatprg=par\ -w80\ -T4
    autocmd FileType php setlocal expandtab
    autocmd FileType php setlocal list
    autocmd FileType php setlocal listchars=tab:+\ ,eol:-
    autocmd FileType php setlocal formatprg=par\ -w80\ -T4
    autocmd FileType ruby setlocal tabstop=2
    autocmd FileType ruby setlocal shiftwidth=2
    autocmd FileType ruby setlocal softtabstop=2
    autocmd FileType ruby setlocal commentstring=#\ %s
    autocmd FileType python setlocal commentstring=#\ %s
    autocmd BufEnter *.cls setlocal filetype=java
    autocmd BufEnter *.zsh-theme setlocal filetype=zsh
    autocmd BufEnter Makefile setlocal noexpandtab
    autocmd BufEnter *.sh setlocal tabstop=2
    autocmd BufEnter *.sh setlocal shiftwidth=2
    autocmd BufEnter *.sh setlocal softtabstop=2
augroup END
