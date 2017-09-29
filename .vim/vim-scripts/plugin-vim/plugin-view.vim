" vim: set fdm=marker  foldlevel=2: vim modeline( set )

"15:  rainbow  parentheses
Bundle "kien/rainbow_parentheses.vim.git"
" {{{
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" 不加入这行, 防止黑色括号出现, 很难识别
" " \ ['black',       'SeaGreen3'],
"
 let g:rbpt_max = 16
 let g:rbpt_loadcmd_toggle = 0
 autocmd VimEnter * RainbowParenthesesToggle
 autocmd Syntax * RainbowParenthesesLoadRound
 autocmd Syntax * RainbowParenthesesLoadSquare
 autocmd Syntax * RainbowParenthesesLoadBraces
" }}}


"7:  powerline and airline
" {{{
"Powerline 字体github可下载: https://github.com/runsisi/consolas-font-for-powerline
"Bundle "Lokaltog/vim-powerline.git"
"set guifont=PowerlineSymbols\ for\ Powerline
"set guifont=Powerline\ Consolas\ Bold
"set laststatus=2
"set t_Co=256
""let g:Powerline_symbols = 'fancy'
"set fillchars+=stl:\ ,stlnc:\

"" unicode symbols
"let g:airline_left_sep = '»'
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
""let g:airline_right_sep = '◀'
""let g:airline_symbols.linenr = '␊'
""let g:airline_symbols.linenr = '␤'
""let g:airline_symbols.linenr = '¶'
""let g:airline_symbols.branch = '⎇'
""let g:airline_symbols.paste = 'ρ'
""let g:airline_symbols.paste = 'Þ'
""let g:airline_symbols.paste = '∥'
""let g:airline_symbols.whitespace = 'Ξ'


"11-2 air-line : 使用tabline, 必须设置laststatus=2
Bundle "vim-airline/vim-airline.git"
Bundle "vim-airline/vim-airline-themes.git"

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" 为airline 设置主题
"let g:airline_theme="molokai"
let g:airline_theme="luna"

"这个是安装字体后 必须设置此项"
let g:airline_powerline_fonts = 1

" 开启tabline
" let g:airline#extensions#tabline#enabled = 1
" 显示buff编号
let g:airline#extensions#tabline#buffer_nr_show = 1

" tabline: 激活buf两端显示字符串
let g:airline#extensions#tabline#left_sep = '▶'

" 在unicode-table找到下面这么多, google 搜索"right arrow unicode",
" 然后进入unicode-table查找符合心意的即可: 找到unicode之后,
" 在vim插入模式中使用ctrl-v u [code]键入
" tabline: 未激活两端箭头: 不是一个字符,可以设置为一个字符串
"let g:airline#extensions#tabline#left_alt_sep = '>>'
"let g:airline#extensions#tabline#left_alt_sep = '➤'
"let g:airline#extensions#tabline#left_alt_sep = '⍄'
"let g:airline#extensions#tabline#left_alt_sep = '➵'
"let g:airline#extensions#tabline#left_alt_sep = '➲'
"let g:airline#extensions#tabline#left_alt_sep = '➲'
let g:airline#extensions#tabline#left_alt_sep = ' |➨| '

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
" }}}


