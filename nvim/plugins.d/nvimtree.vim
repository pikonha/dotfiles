lua << EOF
require'nvim-tree'.setup {
  auto_close = false,
  view = {
    auto_resize = true,
    }
  }
EOF



nnoremap <C-b> :NvimTreeToggle<CR>

let g:nvim_tree_ignore = [ '.git', 'node_modules', '.cache' ]
let g:nvim_tree_auto_open = 1
" let g:nvim_tree_auto_close = 1
let g:nvim_tree_auto_ignore_ft = [ 'startify', 'dashboard' ]
let g:nvim_tree_follow = 1
let g:nvim_tree_indent_markers = 1
let g:nvim_tree_highlight_opened_files = 1

highlight NvimTreeFolderIcon guibg=blue

