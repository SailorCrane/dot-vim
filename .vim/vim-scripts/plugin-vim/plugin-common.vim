" vim: set foldmethod=marker  foldlevel=0: vim modeline( set )
"

"10: wakatime/vim-wakatime
"Plug  'wakatime/vim-wakatime'


"16: jiangmiao/auto-pairs.git
Plug   'jiangmiao/auto-pairs'
let g:AutoPairShortcutToggle = '<C-p>'
let g:AutoPairsMapCh = 0    " 不要将<c-h> 映射为<Backspace>删除键


" 19-2 easy incsearch
Plug  'haya14busa/incsearch.vim'
Plug  'haya14busa/incsearch-easymotion.vim'
"{{{
" incsearch 没啥卵用, 除了给incsearch-easymotion支持
" 需要 incsearch.vim 作为支持
map z/ <Plug>(incsearch-easymotion-/)
map z? <Plug>(incsearch-easymotion-?)
map zg/ <Plug>(incsearch-easymotion-stay)
"}}}


" quick move line down/up
" 卵用不大, unimpaired 的[e 和]e exchange做的很好
"Plug  'matze/vim-move'
" default key is <Alt> (temporary modifier, 即必须可以和其它键同时按下的)
" does not work for <Leader>
"let g:move_key_modifier = '<Leader>'


" sneak: search two character cross lines
Plug  'justinmk/vim-sneak'
" can't use noremap
map <CR>  <Plug>Sneak_;


"20 SearchComplete
" 一个很烂的插件,将我cmd模式下的<tab>映射为对buffer的补全
" 当我想补全vim cmd时总是刷新我的输入. shit
"Plug  'SailorCrane/SearchComplete'
"20-1 CmdlineComplete
Plug  'vim-scripts/CmdlineComplete'


"21 ShowMarks 显示使用m所下的标记
"Plug  'ShowMarks'

Plug  'kshenoy/vim-signature'


"25 git and vertion control about
Plug  'tpope/vim-fugitive'
" {{{
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gd :Gdiff<CR>
"nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gc :Git commit -v<CR>
nnoremap <leader>gb :Gblame<CR>
nnoremap <leader>gl :Glog<CR>
nnoremap <leader>gp :Git push<CR>
nnoremap <leader>gw :Gwrite<CR>

Plug  'airblade/vim-gitgutter'

"Plug  'mhinz/vim-signify'
" this support git/vcs..., no use now
" }}}


"26  vim-unimpaired : toggle twince, paste once
" h paste
" h pasteoggle
Plug   'tpope/vim-unimpaired'


"27 vim-abolish
"使用:S 命令, 交换词
":S/{good, bad}/
Plug  'tpope/vim-abolish'

" Examples:
" :Subvert/facilit{y,ies}/building{,s}/g    替换
" :Subvert/facilit{y,ies}/building{,s}/gn   计数
" :Subvert/facilit{y,ies}/building{,s}/gc   确认(confire)
" :Subvert/facilit{y,ies}/building{,s}/ge   no-error


" projectionist
Plug  'tpope/vim-projectionist'

" for tmux
Plug  'tpope/vim-tbone'

" unix command wrap in vim
Plug  'tpope/vim-eunuch'

Plug  'tpope/vim-scriptease'


"26 matchit 注释这个插件, 因为vim已经自带了
"只用在vimrc中添加 runtime macros/matchit.vim即可
"Plug  'matchit.zip'


"27 EasyGrep
Plug  'vim-scripts/EasyGrep'


" tlib: vim util fun
" snipmate also need
Plug  'tomtom/tlib_vim'


"34 L9: vim library, vim script util.(和tlib一样)
"暂时先不启用这个库,需要时再打开注释:<leader>ci toggle注释
Plug  'vim-scripts/L9'

"29 vimim, vim中文输入法
"Plug  'vimim/vimim'

"30 Chiel92/vim-autoformat
Plug  'Chiel92/vim-autoformat'


"31 YankRing
 "因为YankRing使得@[a-z]宏无法使用, 所有选择YankStack插件代替
 Plug  'SailorCrane/YankRing.vim'
 "yankring vs yankstack
 "yankstack 映射的是: nmap y,d operator
 "yankring  映射的是: omap iw, aw等modtion
 nnoremap  <leader>oy  :YRShow<CR>
 " 因为是clear, 不是关闭窗口, 所以用Cy
 nnoremap  <leader>Cy  :YRClear<CR>

"Plug  'maxbrunsfeld/vim-yankstack'
"" yankring vs yankstack
"" yankstack 映射的是: nmap y,d operator(而yankflashy映射的也是operator, 和yankstack冲突)
"" yankring  映射的是: omap iw, aw等modtion
""call yankstack#setup()
""let g:yankstack_yank_keys = ['y', 'd']
"map  <C-p> <Plug>yankstack_substitute_older_paste
"map  <C-n> <Plug>yankstack_substitute_newer_paste

" yank highlight
"Plug  'machakann/vim-highlightedyank.git'
"map y <Plug>(highlightedyank)
"let g:highlightedyank_highlight_duration = 1000
"let g:highlightedyank_highlight_duration = -1


"32 color view
Plug  'http://git.oschina.net/CraneAgain/xterm-color-table.vim'


"35 multiple-cursor
Plug  'terryma/vim-multiple-cursors'
let g:multi_cursor_start_word_key='g<C-n>'     "选择单词"
let g:multi_cursor_start_key='gi<C-n>'           "在单词中的,也被选择"


" Align plugin
Plug  'godlygeek/tabular'
" {{{
"36-1 godlygeek/tabular

"36-2 Align vim-script 294, it's old
"Plug  'vim-scripts/Align'

" example
" gaip<cr><cr>*<c-x>\[a.*b\]
" :EasyAlign */\[a.*b\]/ {'a': 'c'}

"if !exists('g:easy_align_delimiters')
      "let g:easy_align_delimiters = {}
"endif
"let g:easy_align_delimiters['#'] = { 'pattern': '#', 'ignore_groups': ['String']  }
" }}}


"37 expand-region
Plug  'terryma/vim-expand-region'
vmap v <Plug>(expand_region_expand)
vmap V <Plug>(expand_region_shrink)


"36-5  lastpat
" vi/ 选择模式选中下一次匹配
" 鸡肋, 因为vim的gn, gN 已经可以在选择模式中, 选中下一次匹配了
"Plug   'kana/vim-textobj-lastpat'


" 37 split window by visual-text
Plug  'wellle/visual-split.vim'


"40 ShowTrailingWhiteSpace
Plug  'vim-scripts/ShowTrailingWhitespace'


"42 FencView: fencview
Plug   'mbbill/fencview'

"43 ack.vim
Plug  'vim-scripts/ack.vim'


"44 mkdir, very simple
Plug   'pbrisbin/vim-mkdir'


"45 visual-star search
" 这是vim-practical 作者的一款插件, 实现很简单
" 在«vim-practical»技巧86中, 有这个技巧的实现, 并且书中还有一个关于/ 和?的bug
Plug  'nelstrom/vim-visual-star-search'

"46 qargs
Plug  'nelstrom/vim-qargs'

"49-1  Mark
" 因为'r 和 'n寄存器重复, 所以先注释掉这个插件
"Plug  'Mark'
"49-2 mark.vim 可以同时高亮多个词: 比如同时高亮好几个变量.
"Plug   'Tuxdude/mark.vim'


"50 VOoM
Plug  'vim-voom/VOoM'


"52 visincr 提供增长数列功能
Plug  'vim-scripts/VisIncr'


"61 emmet-vim
"快速写html/css


" 64 auto-fold: zf add marker, zd delete marker
"" 比较烂, 自动添加marker 不太好. 而且有了这个插件, 每次写入文件, 就跳行...
"Plug  'AutoFold.vim'


" 65 drawit: 使用vim draw文本图.
Plug  'hrj/vim-DrawIt'


" 66 file-template
Plug  'aperezdc/vim-template'
if !exists('g:templates_directory')
    let g:templates_directory = [  $Crane_Dot_Vim . "/templates", ]
endif

" 71-1
Plug  'thaerkh/vim-workspace'

" 72-2 vim-session插件比vim-workspace好用很多
Plug  'xolox/vim-misc'
Plug  'xolox/vim-session'
let g:session_autoload = 'no'
let g:session_autosave = 'yes'
nnoremap <Leader>rv  :RestartVim<CR>


" 72 vim-tmux-navigator
Plug  'christoomey/vim-tmux-navigator'
Plug  'wellle/tmux-complete.vim'
let g:tmuxcomplete#trigger = 'completefunc'     " c-x c-u
"let g:tmuxcomplete#trigger = 'omnifunc'        " c-x c-o
'


" 72 vimwiki
"Plug  'vimwiki/vimwiki'


" vim help plugin
Plug  'powerman/vim-plugin-viewdoc'


Plug  'SailorCrane/ToggleIsk'


"rename current file
Plug  'danro/rename.vim'


" gvim fontzoom
Plug  'thinca/vim-fontzoom'

if has('gui_running')
    "nmap  +  <Plug>(fontzoom-larger)
    nmap  =   <Plug>(fontzoom-larger)
    nmap  -   <Plug>(fontzoom-smaller)
endif


" 25 easy sudo eidt
Plug  'vim-scripts/sudo.vim'


" 27
"Plug  'wincent/terminus'

" 30
"Plug  'vim-scripts/Fortune-vimtips'
"Plug   'vim-scripts/fortune.vim'


" 31 stackoverflow
"Plug  'james9909/stackanswers.vim'


" google search
"Plug  'szw/vim-g'
