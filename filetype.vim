" nginx.conf
au BufNewFile,BufRead */nginx/*.conf,*/nginx/**/*.conf,nginx.conf,ngx.conf setf nginx

" xdebug_trace
au BufNewFile,BufRead *.xt  setf xt
