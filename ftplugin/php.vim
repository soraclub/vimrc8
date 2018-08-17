" ia s1 echo "---------------step 1 ---------------<br>\n";
" ia s2 echo "---------------step 2 ---------------<br>\n";
" ia s3 echo "---------------step 3 ---------------<br>\n";
" ia s4 echo "---------------step 4 ---------------<br>\n";
" ia s5 echo "---------------step 5 ---------------<br>\n";
" ia s6 echo "---------------step 6 ---------------<br>\n";
" ia s7 echo "---------------step 7 ---------------<br>\n";
" ia s8 echo "---------------step 8 ---------------<br>\n";
" ia s9 echo "---------------step 9 ---------------<br>\n";
ia tsd echo "<pre>"; var_dump( ); echo "</pre>";<CR>exit(__FILE__.PHP_EOL);<ESC>Vk2<23l
ia tsr echo "<pre>"; print_r( ); echo "</pre>";<CR>exit(__FILE__.PHP_EOL);<ESC>Vk2<22l
ia tse echo "<pre>"; var_export( ); echo "</pre>";<CR>exit(__FILE__.PHP_EOL);<ESC>Vk2<25l
ia vd var_dump( );<CR>exit(__FILE__.PHP_EOL);<ESC>Vk2<9l
ia vr print_r( );<CR>exit(__FILE__.PHP_EOL);<ESC>Vk2<8l
ia setp set_include_path('/home/huangyufei/devspace/:'.get_include_path());<ESC>V3<
ia setrpt error_reporting(E_ALL & ~E_NOTICE);<ESC>V3<
ia reutils require_once ('nicaifu_vutils/Loader.php');<ESC>V3<
ia stm $bg = microtime(true);<CR><CR>$ed = microtime(true);<CR>$cst = ($ed - $bg)*1000;<ESC>2k
ia {} {<CR>}<ESC><UP>

set commentstring=/*%s*/
vmap t> :Tabularize /=><CR>

setlocal omnifunc=syntaxcomplete#Complete

map<F10> :!php %<CR>

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
