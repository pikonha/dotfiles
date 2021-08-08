call plug#begin('~/.vim/plugged')

" INTERFACE
" Plug 'scrooloose/nerdtree'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'vim-airline/vim-airline'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'

" GIT
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" PRODUCTIVITY
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'mg979/vim-visual-multi'
Plug 'turbio/bracey.vim'
Plug 'mattn/emmet-vim'

" THEME
Plug 'artanikin/vim-synthwave84'
Plug 'kyoz/purify', { 'rtp': 'vim' }
" Plug 'joshdick/onedark.vim'

" AUTOCOMPLETE
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
" Plug 'neovim/nvim-lspconfig'
" Plug 'hrsh7th/nvim-compe'
" Plug 'hrsh7th/vim-vsnip'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'antoinemadec/coc-fzf', {'branch': 'release'}
Plug 'fatih/vim-go'
" Plug 'sheerun/vim-polyglot'
"

call plug#end()

for f in split(glob('~/.config/nvim/plugins.d/*.vim'), '\n')
    exe 'source' f
endfor
