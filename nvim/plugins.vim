call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-commentary'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'sheerun/vim-polyglot'
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'antoinemadec/coc-fzf', {'branch': 'release'}
Plug 'mhinz/vim-startify'

" Plugins that are neater in their own file
for f in split(glob('~/.config/nvim/plugins.d/*.vim'), '\n')
    exe 'source' f
endfor

call plug#end()
