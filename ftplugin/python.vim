set nocin
set commentstring=#%s
ia vd print json.dumps(  , ensure_ascii=False, indent=4, separators=(' , ', ' : '))<CR>sys.exit()<ESC>k8l
map<F10> :!python %<CR>

vmap t: :Tabularize /:<CR>

"#不要自动跳到行首
inoremap # X#

ia #{} #{{{<CR><LEFT><LEFT><LEFT><LEFT>#}}}<ESC><UP>

set foldmethod=indent
set foldlevel=1
