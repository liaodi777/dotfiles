set helplang=ja

set number
set shiftwidth=4
set tabstop=4
set expandtab
set textwidth=0

set autoindent 
set smartindent
set hlsearch
nmap <silent> <Esc><Esc> :<C-u>nohlsearch<CR><Esc> " 文字列検索のハイライトオフ
set clipboard=unnamedplus
set wildmenu

set cursorline
set cursorcolumn

" dein.vim settings {{{
" install dir {{{
let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
" }}}

" dein installation check {{{
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . s:dein_repo_dir
endif
" }}}

" begin settings {{{
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " .toml file
  let s:rc_dir = expand('~/.vim')
  if !isdirectory(s:rc_dir)
    call mkdir(s:rc_dir, 'p')
  endif
  let s:toml = s:rc_dir . '/dein.toml'

  " read toml and cache
  call dein#load_toml(s:toml, {'lazy': 0})

  " end settings
  call dein#end()
  call dein#save_state()
endif
" }}}

" plugin installation check {{{
if dein#check_install()
  call dein#install()
endif
" }}}

" plugin remove check {{{
let s:removed_plugins = dein#check_clean()
if len(s:removed_plugins) > 0
  call map(s:removed_plugins, "delete(v:val, 'rf')")
  call dein#recache_runtimepath()
endif
" }}}

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

colorscheme elly
"colorscheme iceberg
"colorscheme momiji

set termguicolors

"let g:lightline = { 'colorscheme': 'icebergDark' }
let g:lightline = { 'colorscheme': 'elly' }
"let g:lightline = { 'colorscheme': 'momiji' }

"---------------------

"ddc.vim--------------

" Customize global settings

" You must set the default ui.
" Note: native ui
" https://github.com/Shougo/ddc-ui-native
call ddc#custom#patch_global('ui', 'native')

" Use around source.
" https://github.com/Shougo/ddc-source-around
call ddc#custom#patch_global('sources', ['around', 'skkeleton'])

call ddc#custom#patch_global('sourceOptions', #{
      \   around: #{ mark: 'A' },
      \ })
call ddc#custom#patch_global('sourceParams', #{
      \   around: #{ maxSize: 500 },
      \ })

call ddc#custom#patch_global('sourceOptions', {
    \   '_': {
    \     'matchers': ['matcher_head'],
    \     'sorters': ['sorter_rank']
    \   },
    \   'skkeleton': {
    \     'mark': 'skkeleton',
    \     'matchers': ['skkeleton'],
    \     'sorters': [],
    \     'minAutoCompleteLength': 2,
    \   },
    \ })

" Mappings
" <TAB>: completion.
inoremap <silent><expr> <TAB>
\ pumvisible() ? '<C-n>' :
\ (col('.') <= 1 <Bar><Bar> getline('.')[col('.') - 2] =~# '\s') ?
\ '<TAB>' : ddc#map#manual_complete()

" <S-TAB>: completion back.
inoremap <expr><S-TAB>  pumvisible() ? '<C-p>' : '<C-h>'

" Use ddc.
call ddc#enable()

" Skkeleton
"call skkeleton#config({ 'globalJisyo': '~/.config/skk/SKK-JISYO.L' })
call skkeleton#config({
    \    'globalDictionaries' : [
    \    ["~/.config/skk/SKK-JISYO.L", "euc-jp"],
    \    ["~/.config/skk/SKK-JISYO.pinyin", "UTF-8"]
    \    ]
    \})

imap <C-j> <Plug>(skkeleton-toggle)
cmap <C-j> <Plug>(skkeleton-toggle)


