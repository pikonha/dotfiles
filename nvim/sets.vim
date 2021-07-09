

set number
set relativenumber
set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter
set incsearch   "show incremental search results as yo type"
set tabstop=2
set showtabline=2
set shiftwidth=2
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
" colorscheme purify
let g:airline_theme='purify'

"" Keymapping
""

inoremap jk <esc>
inoremap kj <esc>
noremap <C-s> <esc>:w<cr>
nnoremap <F3> :bprev<cr>
nnoremap <F4> :bnext<cr>
nnoremap <F7> :tabp<cr>
nnoremap <F8> :tabn<cr>
nnoremap <C-w>- :sp<cr>
nnoremap <C-w>= :vsp<cr>
nnoremap <TAB> :tabn<cr>
nnoremap <C-w>x :tabclose<cr>

"" Copy and paste from clipboard
vnoremap <C-y> "+y
" nnoremap <C-v>  "+p

" reload vim config
nnoremap <leader>sv :source $MYVIMRC<CR>
