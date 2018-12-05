set nocin
set commentstring=/*%s*/
map<F10> :!go run %<CR>
map<F11> :!gofmt -w %<CR>
ia vd fmt.Printf("%+v\n",  )<ESC>h
ia {} {<CR>}<ESC><UP>

vmap t: :Tabularize /:=<CR>

setlocal omnifunc=gocomplete#Complete

let g:go_version_warning = 0

" tagbar
"  let g:tagbar_type_go = {
"      \ 'ctagstype' : 'go',
"      \ 'kinds'     : [
"          \ 'p:package',
"          \ 'i:imports:1',
"          \ 'c:constants',
"          \ 'v:variables',
"          \ 't:types',
"          \ 'n:interfaces',
"          \ 'w:fields',
"          \ 'e:embedded',
"          \ 'm:methods',
"          \ 'r:constructor',
"          \ 'f:functions'
"      \ ],
"      \ 'sro' : '.',
"      \ 'kind2scope' : {
"          \ 't' : 'ctype',
"          \ 'n' : 'ntype'
"      \ },
"      \ 'scope2kind' : {
"          \ 'ctype' : 't',
"          \ 'ntype' : 'n'
"      \ },
"      \ 'ctagsbin'  : 'gotags',
"      \ 'ctagsargs' : '-sort -silent'
"  \ }
