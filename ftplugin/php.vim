ia tsd echo "<pre>"; var_dump( ); echo "</pre>";<CR>exit(__FILE__.PHP_EOL);<ESC>Vk2<23l
ia tsr echo "<pre>"; print_r( ); echo "</pre>";<CR>exit(__FILE__.PHP_EOL);<ESC>Vk2<22l
ia tse echo "<pre>"; var_export( ); echo "</pre>";<CR>exit(__FILE__.PHP_EOL);<ESC>Vk2<25l
ia vd var_dump( );<CR>exit(__FILE__.PHP_EOL);<ESC>Vk2<9l
ia vr print_r( );<CR>exit(__FILE__.PHP_EOL);<ESC>Vk2<8l
ia setp set_include_path('/home/huangyufei/devspace/:'.get_include_path());<ESC>V3<
ia setrpt error_reporting(E_ALL & ~E_NOTICE);<ESC>V3<
ia stm $bg = microtime(true);<CR><CR>$ed = microtime(true);<CR>$cst = ($ed - $bg)*1000;<ESC>2k
ia {} {<CR>}<ESC><UP>

" set fdm=marker
" set commentstring=/*%s*/
vmap t> :Tabularize /=><CR>

setlocal omnifunc=syntaxcomplete#Complete

map<F10> :!php %<CR>

function! s:Vdbg()
    let g:vdebug_options = {
      \ 'break_on_open': 0,
      \ 'port': '9001'
      \ }
    mapclear
    :pa vdebug
endfunction
if !exists(":Vdbg")
    command Vdbg :call s:Vdbg()
endif 

" 开了debug，就关掉其他快捷键映射，加载vdebug映射
if exists('g:is_vdebug_loaded')
    mapclear
    call Vdebug_load_keymaps(g:vdebug_keymap)
endif
    

" tagbar
"let g:tagbar_type_php = {
"    \ 'ctagstype' : 'php',
"    \ 'kinds'     : [
"        \ 'p:package',
"        \ 'i:imports:1',
"        \ 'c:constants',
"        \ 'v:variables',
"        \ 't:types',
"        \ 'n:interfaces',
"        \ 'w:fields',
"        \ 'e:embedded',
"        \ 'm:methods',
"        \ 'r:constructor',
"        \ 'f:functions'
"    \ ],
"    \ 'sro' : '.',
"    \ 'kind2scope' : {
"        \ 't' : 'ctype',
"        \ 'n' : 'ntype'
"    \ },
"    \ 'scope2kind' : {
"        \ 'ctype' : 't',
"        \ 'ntype' : 'n'
"    \ },
"    \ 'ctagsbin'  : 'phpctags',
"    \ 'ctagsargs' : ''
"\ }
