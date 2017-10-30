" vim: set foldmethod=marker  foldlevel=2: vim modeline( set )
"

"1: Conque-Shell
Bundle  'oplatek/Conque-Shell'
" {{{
"nnoremap   <C-n>  :ConqueTermVSplit bash<CR>
"nnoremap   <C-b>  :ConqueTermVSplit bash<CR>
noremap  <leader>ba  :ConqueTermVSplit bash<CR>
noremap  <leader>oc  :ConqueTermVSplit bash<CR>
let g:ConqueTerm_StartMessages = 0
" }}}


"10: wakatime/vim-wakatime
"Bundle 'wakatime/vim-wakatime'


"16: jiangmiao/auto-pairs.git
Bundle  'jiangmiao/auto-pairs'
let g:AutoPairShortcutToggle = '<C-p>'
let g:AutoPairsMapCh = 0    " 不要将<c-h> 映射为<Backspace>删除键


"19: easy-motion
Bundle 'easymotion/vim-easymotion'
" {{{
let g:EasyMotion_smartcase = 1
"let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion

" 这里需要使用imap, 而不是inoremap. 因为后面有连续映射.
imap  <Leader><Leader>  <ESC><Plug>(easymotion-prefix)

" move to anything(global)
"map  <Leader><Leader>f <Plug>(easymotion-bd-f)
"nmap <Leader><Leader>f <Plug>(easymotion-overwin-f)

map  <Leader>f <Plug>(easymotion-bd-f)
nmap <leader>f <plug>(easymotion-overwin-f)

" Move to line
map  <Leader><Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader><Leader>l <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader><Leader>w <Plug>(easymotion-bd-w)
nmap  <Leader><Leader>w <Plug>(easymotion-overwin-w)

"map <Leader><leader>h <Plug>(easymotion-linebackward)
"map <Leader><leader>l <Plug>(easymotion-lineforward)
"map <Leader><Leader>j <Plug>(easymotion-j)
"map <Leader><Leader>k <Plug>(easymotion-k)
" 重复上一次操作, 类似repeat插件, 很强大
"map <Leader><leader>. <Plug>(easymotion-repeat)

" 这里必须使用map/nmap, 而不可以使用nnoremap, 因为使用了连续映射如下所示
" <Leader><Leader>             <Plug>(easymotion-prefix)
" <Plug>(easymotion-prefix)N   <Plug>(easymotion-N)
" <Plug>(easymotion-prefix)n   <Plug>(easymotion-n)
" <Plug>(easymotion-prefix)k   <Plug>(easymotion-k)
" <Plug>(easymotion-prefix)j   <Plug>(easymotion-j)
" <Plug>(easymotion-prefix)gE  <Plug>(easymotion-gE)
" <Plug>(easymotion-prefix)ge  <Plug>(easymotion-ge)
" <Plug>(easymotion-prefix)E   <Plug>(easymotion-E)
" <Plug>(easymotion-prefix)e   <Plug>(easymotion-e)
" <Plug>(easymotion-prefix)B   <Plug>(easymotion-B)
" <Plug>(easymotion-prefix)b   <Plug>(easymotion-b)
" <Plug>(easymotion-prefix)W   <Plug>(easymotion-W)
" <Plug>(easymotion-prefix)w   <Plug>(easymotion-w)
" <Plug>(easymotion-prefix)T   <Plug>(easymotion-T)
" <Plug>(easymotion-prefix)t   <Plug>(easymotion-t)
" <Plug>(easymotion-prefix)s   <Plug>(easymotion-s)
" <Plug>(easymotion-prefix)F   <Plug>(easymotion-F)
" <Plug>(easymotion-prefix)f   <Plug>(easymotion-f)
" <Plug>(easymotion-f)         :<C-U>call EasyMotion#S(1,0,0)<CR>
" }}}

" 19-2 easy incsearch
Bundle 'haya14busa/incsearch.vim'
Bundle 'haya14busa/incsearch-easymotion.vim'
"{{{
" incsearch 没啥卵用, 除了给incsearch-easymotion支持
" 需要 incsearch.vim 作为支持
map z/ <Plug>(incsearch-easymotion-/)
map z? <Plug>(incsearch-easymotion-?)
map zg/ <Plug>(incsearch-easymotion-stay)
"}}}

" quick move line down/up
" 卵用不大, unimpaired 的[e 和]e exchange做的很好
"Bundle 'matze/vim-move'
" default key is <Alt> (temporary modifier, 即必须可以和其它键同时按下的)
" does not work for <Leader>
"let g:move_key_modifier = '<Leader>'


" sneak: search two character cross lines
Bundle 'justinmk/vim-sneak'
" can't use noremap
map <CR>  <Plug>Sneak_;


"20 SearchComplete
" 一个很烂的插件,将我cmd模式下的<tab>映射为对buffer的补全
" 当我想补全vim cmd时总是刷新我的输入. shit
"Bundle 'SailorCrane/SearchComplete'
"20-1 CmdlineComplete
Bundle 'vim-scripts/CmdlineComplete'


"21 ShowMarks 显示使用m所下的标记
"Bundle 'ShowMarks'

Bundle 'kshenoy/vim-signature'


"22 vim-surround
Bundle 'tpope/vim-surround'
" cs"'
" ds"
" ysiw"


"23 repeat ,和surround同一个作者,主要用于 重复执行surround的操作
"  ysiW": 给W添加"
"  yss" : 给一行添加"
Bundle 'tpope/vim-repeat'


"25 git and vertion control about
Bundle 'tpope/vim-fugitive'
" {{{
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gd :Gdiff<CR>
"nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gc :Git commit -v<CR>
nnoremap <leader>gb :Gblame<CR>
nnoremap <leader>gl :Glog<CR>
nnoremap <leader>gp :Git push<CR>
nnoremap <leader>gw :Gwrite<CR>

Bundle 'airblade/vim-gitgutter'

"Bundle 'mhinz/vim-signify'
" this support git/vcs..., no use now
" }}}


"26  vim-unimpaired : toggle twince, paste once
" h paste
" h pasteoggle
Bundle  'tpope/vim-unimpaired'


"27 vim-abolish
"使用:S 命令, 交换词
":S/{good, bad}/
Bundle 'tpope/vim-abolish'


" projectionist
Bundle 'tpope/vim-projectionist'

" for tmux
Bundle 'tpope/vim-tbone'

" unix command wrap in vim
Bundle 'tpope/vim-eunuch'

Bundle 'tpope/vim-scriptease'


"26 matchit 注释这个插件, 因为vim已经自带了
"只用在vimrc中添加 runtime macros/matchit.vim即可
"Bundle 'matchit.zip'


"27 EasyGrep
Bundle 'vim-scripts/EasyGrep'


" tlib: vim util fun
" snipmate also need
Bundle 'tomtom/tlib_vim'


"34 L9: vim library, vim script util.(和tlib一样)
"暂时先不启用这个库,需要时再打开注释:<leader>ci toggle注释
Bundle 'vim-scripts/L9'

"29 vimim, vim中文输入法
"Bundle 'vimim/vimim'

"30 Chiel92/vim-autoformat
Bundle 'Chiel92/vim-autoformat'


"31 Yankring,因为很多快捷键冲突,所以先将这个插件注释
Bundle 'vim-scripts/YankRing.vim'
nnoremap  <leader>oy  :YRShow<CR>
" 因为是clear, 不是关闭窗口, 所以用Cy
nnoremap  <leader>Cy  :YRClear<CR>

" yank highlight
"Bundle 'machakann/vim-highlightedyank.git'
"map y <Plug>(highlightedyank)
"let g:highlightedyank_highlight_duration = 1000
"let g:highlightedyank_highlight_duration = -1

Bundle 'kana/vim-operator-user'

Bundle 'haya14busa/vim-operator-flashy'
map y <Plug>(operator-flashy)
let g:operator#flashy#flash_time = 200


"32 color view
Bundle 'http://git.oschina.net/CraneAgain/xterm-color-table.vim'


"35 multiple-cursor
Bundle 'terryma/vim-multiple-cursors'
let g:multi_cursor_start_word_key='g<C-n>'     "选择单词"
let g:multi_cursor_start_key='gi<C-n>'           "在单词中的,也被选择"


" Align plugin
Bundle 'godlygeek/tabular'
" {{{
"36-1 godlygeek/tabular

"36-2 Align vim-script 294, it's old
"Bundle 'vim-scripts/Align'

"36-3 junegunn/vim-easy-align
Bundle 'junegunn/vim-easy-align'
vmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" example
" gaip<cr><cr>*<c-x>\[a.*b\]
" :EasyAlign */\[a.*b\]/ {'a': 'c'}

"if !exists('g:easy_align_delimiters')
      "let g:easy_align_delimiters = {}
"endif
"let g:easy_align_delimiters['#'] = { 'pattern': '#', 'ignore_groups': ['String']  }
" }}}


"37 expand-region
Bundle 'terryma/vim-expand-region'
vmap v <Plug>(expand_region_expand)
vmap V <Plug>(expand_region_shrink)


" object/target plugins
"36-1 extend vim target
Bundle 'wellle/targets.vim'
let g:targets_pairs = '()b {}B [] <>'

"36-2 text-object-entire: file object
Bundle 'kana/vim-textobj-user'
Bundle 'kana/vim-textobj-entire'
" 和column object冲突
"Bundle 'glts/vim-textobj-comment'

"36-3 column object
Bundle 'coderifous/textobj-word-column.vim'
Bundle 'saihoooooooo/vim-textobj-space'
Bundle 'Julian/vim-textobj-variable-segment'

"36-4 indent object
Bundle 'michaeljsmith/vim-indent-object'


"36-5  lastpat
" vi/ 选择模式选中下一次匹配
" 鸡肋, 因为vim的gn, gN 已经可以在选择模式中, 选中下一次匹配了
"Bundle  'kana/vim-textobj-lastpat'


" 37 split window by visual-text
Bundle 'wellle/visual-split.vim'


"38 gundo stand for gnu undo
Bundle 'vim-scripts/gundo'


"40 ShowTrailingWhiteSpace
Bundle 'vim-scripts/ShowTrailingWhitespace'


"42 FencView: fencview
Bundle  'mbbill/fencview'

"43 ack.vim
Bundle 'vim-scripts/ack.vim'


"44 mkdir, very simple
Bundle  'pbrisbin/vim-mkdir'


"45 visual-star search
" 这是vim-practical 作者的一款插件, 实现很简单
" 在«vim-practical»技巧86中, 有这个技巧的实现, 并且书中还有一个关于/ 和?的bug
Bundle 'nelstrom/vim-visual-star-search'

"46 qargs
Bundle 'nelstrom/vim-qargs'

"49-1  Mark
" 因为'r 和 'n寄存器重复, 所以先注释掉这个插件
"Bundle 'Mark'
"49-2 mark.vim 可以同时高亮多个词: 比如同时高亮好几个变量.
"Bundle  'Tuxdude/mark.vim'


"50 VOoM
Bundle 'vim-voom/VOoM'


"51 calendar
Bundle 'itchyny/calendar.vim'
nnoremap <Leader>oC :Calendar<CR>


"52 visincr 提供增长数列功能
Bundle 'vim-scripts/VisIncr'


"55 ReplaceWithRegister
Bundle 'vim-scripts/ReplaceWithRegister'


"56  vim-exchange :learned from vimcasts
Bundle 'tommcdo/vim-exchange'


"61 emmet-vim
"快速写html/css


" 64 auto-fold: zf add marker, zd delete marker
"" 比较烂, 自动添加marker 不太好. 而且有了这个插件, 每次写入文件, 就跳行...
"Bundle 'AutoFold.vim'


" 65 drawit: 使用vim draw文本图.
Bundle 'hrj/vim-DrawIt'


" 66 file-template
Bundle 'aperezdc/vim-template'
if !exists('g:templates_directory')
    let g:templates_directory = [  $Crane_Dot_Vim . "/templates", ]
endif

" 71-1
Bundle 'thaerkh/vim-workspace'

" 72-2 vim-session插件比vim-workspace好用很多
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-session'
:let g:session_autosave = 'no'
:let g:session_autoload = 'no'
nnoremap <Leader>rv  :RestartVim<CR>


" 72 vim-tmux-navigator
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'wellle/tmux-complete.vim'
let g:tmuxcomplete#trigger = 'completefunc'     " c-x c-u
"let g:tmuxcomplete#trigger = 'omnifunc'        " c-x c-o
'


" 72 vimwiki
"Bundle 'vimwiki/vimwiki'


" sort motion
Bundle 'christoomey/vim-sort-motion'


" goyo.vim
Bundle 'junegunn/goyo.vim'
nnoremap <Leader>tg  :Goyo<CR>
nnoremap <Leader>cg  :Goyo!<CR>


" vim help plugin
Bundle 'powerman/vim-plugin-viewdoc'


Bundle 'SailorCrane/ToggleIsk'


"rename current file
Bundle 'danro/rename.vim'


" gvim fontzoom
Bundle 'thinca/vim-fontzoom'

if has('gui_running')
    "nmap  +  <Plug>(fontzoom-larger)
    nmap  =   <Plug>(fontzoom-larger)
    nmap  -   <Plug>(fontzoom-smaller)
endif


" 25 easy sudo eidt
Bundle 'vim-scripts/sudo.vim'


" 26 start page for vim
Bundle 'mhinz/vim-startify'


" 27
"Bundle 'wincent/terminus'

" 28 搜索文件
Bundle 'wincent/ferret'


" 29 unite(for vim8, nicer)
Bundle 'Shougo/denite.nvim'
" map like ctrlp
" h denite-key-mappings
call denite#custom#map('insert', '<C-j>', '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('insert', '<C-k>', '<denite:move_to_previous_line>', 'noremap')
"call denite#custom#map('insert', '<C-n>', '<denite:move_to_next_line>', 'noremap')
"call denite#custom#map('insert', '<C-p>', '<denite:move_to_previous_line>', 'noremap')

" 30
"Bundle 'vim-scripts/Fortune-vimtips'
"Bundle  'vim-scripts/fortune.vim'


" 31 stackoverflow
"Bundle 'james9909/stackanswers.vim'


" google search
"Bundle 'szw/vim-g'
