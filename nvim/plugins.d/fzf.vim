nnoremap <C-p> :FZF<cr>

let $FZF_DEFAULT_COMMAND = "find -L -type f -not -path '*/.git/*' -not -path '*/node_modules/*' -not -path '*/vendor/*'"
