" vim: set foldmethod=marker  foldlevel=2: vim modeline( set )

"set t_Co=256
set background=dark

"============colorschemes===========================


"1: more colorscheme(大多数colorschemes在这里都有了)
Bundle "rafi/awesome-vim-colorschemes.git"


"2: colors/molokai.vim
Bundle  "SailorCrane/molokai.git"
let g:molokai_original = 1


"3: monokai
"Bundle "sickill/vim-monokai.git"
Bundle "SailorCrane/vim-monokai.git"


"4: altercation/vim-colors-solarized
Bundle  "altercation/vim-colors-solarized.git"

"5: color sampler
Bundle  "vim-scripts/Colour-Sampler-Pack.git"


"6: railscast
Bundle "jpo/vim-railscasts-theme.git"


"7: seoul256 colorschemes (awesome-vim-colorschemes中已有)
"Bundle "junegunn/seoul256.vim.git"


"===================thematic=======================
"1: thematic
Bundle "reedes/vim-thematic.git"
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
