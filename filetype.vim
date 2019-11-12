" nginx.conf
"au BufNewFile,BufRead */nginx/*.conf,*/nginx/**/*.conf,nginx.conf,ngx.conf,*.ngx.conf setf nginx
au BufNewFile,BufRead *nginx.conf,*ngx.conf,*/*ngx*/*.conf,*/*nginx*/*.conf setf nginx

" xdebug_trace
au BufNewFile,BufRead *.xt  setf xt

" dockerfile
au BufNewFile,BufRead *.[dD]ockerfile,[dD]ockerfile,[dD]ockerfile.* setf dockerfile

