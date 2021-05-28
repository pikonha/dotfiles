
let mapleader = "\<Space>"

source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/sets.vim

" Remove trailing whitespace
au BufWritePre * :%s/\s\+$//e

