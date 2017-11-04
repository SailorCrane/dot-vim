" vim: set fdm=marker  foldlevel=0: vim modeline( set )

" 1-1:  rainbow  parentheses
"Plug  'kien/rainbow_parentheses.vim'
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
" 不加入这行, 防止黑色括号出现, 很难识别
" " \ ['black',       'SeaGreen3'],
"

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 1

"augroup  RainBow
    "au!
    "au VimEnter * RainbowParenthesesActivate
    "au VimEnter   * RainbowParenthesesLoadRound
    "au Syntax   * RainbowParenthesesLoadSquare
    "au Syntax   * RainbowParenthesesLoadBraces
"augroup END
" }}}

" 1-2
Plug  'luochen1990/rainbow'
" 和syntax on有冲突
"{{{
let g:rainbow_conf = {
\   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
\   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
\   'operators': '_,_',
\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\   'separately': {
\       '*': {},
\       'tex': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\       },
\       'lisp': {
\           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
\       },
\       'vim': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\       },
\       'html': {
\           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\       },
\       'css': 0,
\   }
\}
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle
nnoremap  <Leader>tr  :RainbowToggle<CR>
nnoremap  <Leader>or  :RainbowToggleOn<CR>

" 防止:syntax on disable Rainbow color
if exists(':RainbowToggleOn')
    RainbowToggleOn
    "echom "exists"
endif

"augroup Rainbow
    "au!
    "au VimEnter * RainbowToggleOn
"augroup END
"}}}

" 2-1:  powerline
" {{{
"Powerline 字体github可下载: https://github.com/runsisi/consolas-font-for-powerline
"Plug  'Lokaltog/vim-powerline'
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

" }}}

" 2-2 air-line : 使用tabline, 必须设置laststatus=2
Plug  'vim-airline/vim-airline'
Plug  'vim-airline/vim-airline-themes'
" {{{

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


