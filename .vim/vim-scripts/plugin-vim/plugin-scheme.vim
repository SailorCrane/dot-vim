" vim: set foldmethod=marker  foldlevel=2: vim modeline( set )

"set t_Co=256
set background=dark

"============colorschemes===========================

"1: colors/molokai.vim
Bundle  "SailorCrane/molokai.git"
let g:molokai_original = 1

"2: altercation/vim-colors-solarized
Bundle  "altercation/vim-colors-solarized.git"

"3: color sampler
Bundle  "Colour-Sampler-Pack.git"


"4: monokai
"Bundle "sickill/vim-monokai.git"
Bundle "SailorCrane/vim-monokai.git"


"5: railscast
Bundle "jpo/vim-railscasts-theme.git"


"6: more colorscheme
Bundle "rafi/awesome-vim-colorschemes.git"


"==================================================

Bundle "reedes/vim-thematic"
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
