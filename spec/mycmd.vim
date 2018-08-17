"Togcolo 切换配色 peachpuff or solarized
let g:solarized_termcolors=256
let g:solarized_underline=0
function! s:Togcolo()
    let raw=$VIMRUNTIME
    let $VIMRUNTIME=$HOME."/.vim"
    if g:colors_name == 'peachpuff'
        set t_Co=256
        let &bg="dark"
        colo solarized
    elseif g:colors_name == 'solarized'
        set t_Co=8
        let &bg="light"
        colo peachpuff
    endif
    let $VIMRUNTIME=raw
endfunction
if !exists(":Togcolo")
    command Togcolo :call s:Togcolo()
endif

