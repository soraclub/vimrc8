"set rtp+=$VIMRUNTIME
set nu
set nowrap
set encoding=utf-8
set fileencoding=utf-8

filetype on
filetype plugin on
syntax enable

set background=dark
colorscheme peachpuff 
hi LineNr ctermfg=2
" colorscheme solarized

set tabstop=4 
set shiftwidth=4 
set expandtab

set smartindent 
set cin 

set showmatch 
"set guioptions-=T 
set vb t_vb= 
set ruler 
set hls 
set incsearch 

"自动对齐
vmap t= :Tabularize /=<CR>
vmap t, :Tabularize /,<CR>

map<F3> :NERDTreeToggle<CR>
map<F4> :TagbarToggle<CR>
map<F5> :Project<CR>

"nerd配置
let NERDTreeIgnore=['\.pyc','\~$','\.swp']

"快速移动
vmap <C-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <C-k> :m'<-2<cr>`>my`<mzgv`yo`z
"分屏窗口尺寸
nmap <C-j> 4<C-w>+
nmap <C-k> 4<C-w>-
nmap <C-h> 4<C-w><
nmap <C-l> 4<C-w>>
"高亮相同
nmap * *N
nmap g* g*N
"引号对删除
nmap d' vi'd
nmap d" vi"d
"括号对删除
nmap d( vi(d
nmap d{ vi{d
nmap d[ vi[d

"自定义pack
packadd asyncrun
let g:asyncrun_open = 8
vmap :cht :AsyncRun read word; fn="%"; curl -s "cht.sh/${fn\#\#*.}/$word?T"

" 加载自定义命令
source ~/.vim/spec/mycmd.vim

