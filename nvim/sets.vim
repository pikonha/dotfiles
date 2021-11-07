set number relativenumber
set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter
set incsearch   "show incremental search results as yo type"
set tabstop=2
set showtabline=2
set shiftwidth=2
set hidden
set smarttab
set smartindent
set expandtab
set backspace=indent,eol,start
set mouse=a
set noswapfile
                  " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set hlsearch
set clipboard^=unnamed,unnamedplus

" autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
" autocmd FileType javascriptreact setlocal shiftwidth=2 tabstop=2

" More natural splitting
set splitbelow
set splitright

""
"" languages
""
syntax on             " enable syntax highlighting
filetype on           " enable filetype detection
filetype indent on    " enable filetype-specific indenting
filetype plugin on    " enable filetype-specific plugins

" Theme
if (has("termguicolors"))
 set termguicolors
endif

colorscheme synthwave84
" colorscheme synthwave84
" colorscheme purify
let g:airline_theme='purify'

"" Keymapping

inoremap jk <esc>
inoremap kj <esc>
nnoremap <silent> <C-s> :w<cr>
inoremap <silent> <C-s> <esc>:w<cr>
nnoremap <F3> :bprev<cr>
nnoremap <F4> :bnext<cr>
nnoremap <F7> :tabp<cr>
nnoremap <F8> :tabn<cr>
nnoremap <C-l> :noh<cr>
nnoremap <C-w>- :sp<cr>
nnoremap <C-w>= :vsp<cr>
nnoremap <C-w>x :tabclose<cr>

" show next match in the center of the screen
nnoremap n nzz
nnoremap N Nzz

" reload vim config
nnoremap <leader>sv :source $MYVIMRC<CR>

" save files with sudo
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

" moving selection
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv
