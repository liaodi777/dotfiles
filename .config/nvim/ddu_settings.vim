" ddu.vim settings
call ddu#custom#patch_global({
    \ 'ui': 'ff',
    \ 'sources': [{'name': 'file_rec', 'params': {}}],
    \ 'sourceOptions': {'_': {'matchers': ['matcher_substring']}},
    \ 'kindOptions': {'file': {'defaultAction': 'open'}},
\ })

call ddu#custom#patch_global({
    \ 'ui': 'filer',
    \ 'sources': [{'name': 'file', 'params': {}}],
    \ 'sourceOptions': {'_': {'columns': ['filename']}},
    \ 'kindOptions': {'file': {'defaultAction': 'open'}},
\ })
