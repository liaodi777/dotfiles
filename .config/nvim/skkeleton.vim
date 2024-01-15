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
