"Theme----------------

" Default setting ================================================
filetype on
filetype plugin on
filetype indent on


autocmd colorscheme * highlight Normal      ctermbg=NONE guibg=NONE
autocmd colorscheme * highlight NonText     ctermbg=NONE guibg=NONE
autocmd colorscheme * highlight Folded      ctermbg=NONE guibg=NONE
autocmd colorscheme * highlight EndOfBuffer ctermbg=NONE guibg=NONE



syntax enable

"colorscheme elly
colorscheme iceberg
"colorscheme momiji

set termguicolors

let g:lightline = { 'colorscheme': 'iceberg' }
"let g:lightline = { 'colorscheme': 'elly' }
"let g:lightline = { 'colorscheme': 'momiji' }

"---------------------
