if exists('g:loaded_copypaste')
    finish
endif

if has('maxunix') || system('uname') =~? '^darwin'
    vnoremap <silent> <C-c> y: call system("pbcopy", getreg('"'))<CR>
    nnoremap <C-v> :call setreg('"', system('pbpaste'))<CR>p
elseif $DISPLAY != '' && executable('xclip')
    vnoremap <silent> <C-c> y: call system("xclip -i -selection clipboard", getreg('"'))<CR>
    nnoremap <C-v> :call setreg('"', system('xclip -o -selection clipboard'))<CR>p
endif

let g:loaded_copypaste = 1
