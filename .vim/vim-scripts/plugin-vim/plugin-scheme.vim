" vim: set foldmethod=marker  foldlevel=2: vim modeline( set )

"set t_Co=256
set background=dark

"============colorschemes===========================


"1: more colorscheme(大多数colorschemes在这里都有了)
call dein#add('rafi/awesome-vim-colorschemes')


"2: colors/molokai.vim
call dein#add('SailorCrane/molokai')
let g:molokai_original = 1


"3: monokai
"call dein#add('sickill/vim-monokai')
call dein#add('SailorCrane/vim-monokai')


"4: altercation/vim-colors-solarized
call dein#add('altercation/vim-colors-solarized')
"call dein#add('lifepillar/vim-solarized8')

"5: color sampler
call dein#add('vim-scripts/Colour-Sampler-Pack')


"6: railscast
call dein#add('jpo/vim-railscasts-theme')


"7: seoul256 colorschemes (awesome-vim-colorschemes中已有)
"call dein#add('junegunn/seoul256.vim')


"8: jellybeans
call dein#add('nanotech/jellybeans.vim')


"9: base16
call dein#add('chriskempson/base16-vim')


"10:
call dein#add('mhinz/vim-janah')


"===================thematic=======================
" organize  theme
"1: thematic
call dein#add('reedes/vim-thematic')
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
