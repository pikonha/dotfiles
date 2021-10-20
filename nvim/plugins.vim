call plug#begin('~/.vim/plugged')

" INTERFACE
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'vim-airline/vim-airline'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'simeji/winresizer'
Plug 'nathanaelkane/vim-indent-guides'

" GIT
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" PRODUCTIVITY
Plug 'tpope/vim-commentary'
Plug 'mg979/vim-visual-multi'
" Plug 'turbio/bracey.vim'
Plug 'mattn/emmet-vim'
Plug 'alvan/vim-closetag'
Plug 'neoclide/vim-jsx-improve'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
" Plug 'tpope/vim-surround'
Plug 'junegunn/vim-easy-align'

" THEME
Plug 'arcticicestudio/nord-vim'
Plug 'artanikin/vim-synthwave84'
Plug 'kyoz/purify', { 'rtp': 'vim' }
" Plug 'joshdick/onedark.vim'

" AUTOCOMPLETE
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'antoinemadec/coc-fzf', {'branch': 'release'}
Plug 'fatih/vim-go'
Plug 'windwp/nvim-ts-autotag'

call plug#end()

for f in split(glob('~/.config/nvim/plugins.d/*.vim'), '\n')
    exe 'source' f
endfor
