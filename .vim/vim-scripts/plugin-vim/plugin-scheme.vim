" vim: set foldmethod=marker  foldlevel=2: vim modeline( set )

"set t_Co=256
set background=dark

"============colorschemes===========================


"1: more colorscheme(大多数colorschemes在这里都有了)
Bundle 'rafi/awesome-vim-colorschemes'


"2: colors/molokai.vim
Bundle  'SailorCrane/molokai'
let g:molokai_original = 1


"3: monokai
"Bundle 'sickill/vim-monokai'
Bundle 'SailorCrane/vim-monokai'


"4: altercation/vim-colors-solarized
Bundle  'altercation/vim-colors-solarized'

"5: color sampler
Bundle  'vim-scripts/Colour-Sampler-Pack'


"6: railscast
Bundle 'jpo/vim-railscasts-theme'


"7: seoul256 colorschemes (awesome-vim-colorschemes中已有)
"Bundle 'junegunn/seoul256.vim'


"8: jellybeans
Bundle 'nanotech/jellybeans.vim'


"9: base16
Bundle 'chriskempson/base16-vim'


"10:
Bundle 'mhinz/vim-janah'


"===================thematic=======================
" organize  theme
"1: thematic
Bundle 'reedes/vim-thematic'
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
