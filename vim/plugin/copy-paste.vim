if exists('g:loaded_copypaste')
    finish
endif

if has('maxunix') || system('uname') =~? '^darwin'
    vnoremap <silent> <C-c> y: call system("pbcopy", getreg('"'))<CR>
elseif $DISPLAY != '' && executable('xclip')
    vnoremap <silent> <C-c> y: call system("xclip -i -selection clipboard", getreg('"'))<CR>
endif

let g:loaded_copypaste = 1
