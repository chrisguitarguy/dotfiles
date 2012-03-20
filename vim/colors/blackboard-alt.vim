hi clear
if exists("syntax_on")
   syntax reset
endif

let g:colors_name = "blackboard-alt"

" Colours in use
" --------------
" #FF5600 bright orange
" #FFDE00 yolk yellow
" #D8FA3C lemon yellow
" #61CE3C green
" #84A7C1 light blue
" #AEAEAE medium grey

"GUI Colors
highlight Normal ctermbg=0
highlight Cursor ctermbg=15
highlight CursorLine ctermbg=15
highlight LineNr ctermbg=238 ctermfg=246
highlight Folded ctermbg=236 ctermfg=248
highlight Visual ctermbg=154 ctermfg=0

"General Colors
highlight Comment ctermfg=240
highlight Constant ctermfg=119
highlight Keyword ctermfg=21 gui=bold
highlight String ctermfg=46
highlight Type ctermfg=32 gui=bold
highlight Identifier ctermfg=28
highlight Function ctermfg=166 gui=bold
highlight clear Search
highlight Search ctermbg=8
highlight PreProc ctermfg=202

" StatusLine
highlight StatusLine ctermfg=0 ctermbg=230 gui=italic
highlight StatusLineNC ctermfg=0 ctermbg=25

"Invisible character colors
highlight NonText ctermfg=234
highlight SpecialKey ctermfg=234

"HTML Colors
highlight link htmlTag Type
highlight link htmlEndTag htmlTag
highlight link htmlTagName htmlTag

"Ruby Colors
highlight link rubyClass Keyword
highlight link rubyDefine Keyword
highlight link rubyConstant Type
highlight link rubySymbol Constant
highlight link rubyStringDelimiter rubyString
highlight link rubyInclude Keyword
highlight link rubyAttribute Keyword
highlight link rubyInstanceVariable Normal

"Rails Colors
highlight link railsMethod Type

"Sass colors
highlight link sassMixin Keyword
highlight link sassMixing Constant

"Markdown colors
highlight markdownCode ctermfg=34
highlight link markdownCodeBlock markdownCode
