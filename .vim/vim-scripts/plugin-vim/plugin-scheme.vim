" vim: set foldmethod=marker  foldlevel=2: vim modeline( set )

"set t_Co=256
set background=dark

"============colorschemes===========================


"1: more colorscheme(大多数colorschemes在这里都有了)
Plug  'rafi/awesome-vim-colorschemes'


"2: colors/molokai.vim
Plug   'SailorCrane/molokai'
let g:molokai_original = 1


"3: monokai
"Plug  'sickill/vim-monokai'
Plug  'SailorCrane/vim-monokai'


"4: altercation/vim-colors-solarized
Plug  'altercation/vim-colors-solarized'
"Plug  'lifepillar/vim-solarized8'

"5: color sampler
Plug   'vim-scripts/Colour-Sampler-Pack'


"6: railscast
Plug  'jpo/vim-railscasts-theme'


"7: seoul256 colorschemes (awesome-vim-colorschemes中已有)
"Plug  'junegunn/seoul256.vim'


"8: jellybeans
Plug  'nanotech/jellybeans.vim'


"9: base16
Plug  'chriskempson/base16-vim'


"10:
Plug  'mhinz/vim-janah'


"===================thematic=======================
" organize  theme
"1: thematic
Plug  'reedes/vim-thematic'
"{{{
let g:thematic#themes = {
\ 'molokai'  : {   'typeface': 'Menlo',
\                  'font-size': 18,
\                  'transparency': 10,
\                  'linespace': 3,
\                },
\ 'monokai' : {    'font-size': 18,
\                  'transparency': 10,
\                  'linespace': 3,
\                },
\ 'solarized' : {  'font-size': 18,
\                  'transparency': 10,
\                  'linespace': 3,
\                },
\ }

let g:thematic#monokai = 'monokai'
"Thematic  monokai
"}}}
