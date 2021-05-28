set relativenumber
set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter
set incsearch   "show incremental search results as yo type"
set tabstop=2
set showtabline=2
set smarttab
set smartindent
set expandtab
set backspace=indent,eol,start
set mouse=a
                  " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting

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

colorscheme onedark

"" Keymapping
""

imap jk <esc>
imap kj <esc>
imap <C-s> <esc>:w<cr>
nnoremap <C-w>- :sp<cr>
nnoremap <C-w>= :vsp<cr>
nnoremap <F7> :tabp<cr>
nnoremap <F8> :tabn<cr>
nnoremap <C-w>x :tabclose<cr>


"" Autocomplete made easy
inoremap <expr> <RETURN> pumvisible() ? "\<C-y>" : "\<CR>"
inoremap <expr> <TAB> pumvisible() ? "\<C-y>" : "\<CR>"
inoremap <expr> <Esc> pumvisible() ? "\<C-e>" : "\<Esc>"
inoremap <expr> <C-c> pumvisible() ? "\<C-e>" : "\<Esc>"
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<Up>"
