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
