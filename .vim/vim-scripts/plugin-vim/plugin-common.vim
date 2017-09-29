" vim: set foldmethod=marker  foldlevel=2: vim modeline( set )
"

"9: Conque-Shell
" {{{
Bundle  "oplatek/Conque-Shell.git"
"nnoremap   <C-n>  :ConqueTermVSplit bash<CR>
"nnoremap   <C-b>  :ConqueTermVSplit bash<CR>
noremap  <leader>ba  :ConqueTermVSplit bash<CR>
" }}}


"10: wakatime/vim-wakatime
"Bundle "wakatime/vim-wakatime.git"


"16: jiangmiao/auto-pairs.git
Bundle  "jiangmiao/auto-pairs.git"
let g:AutoPairShortcutToggle = '<C-p>'
let g:AutoPairsMapCh = 0    " 不要将<c-h> 映射为<Backspace>删除键


"18: https://github.com/kien/ctrlp.vim
Bundle "https://github.com/kien/ctrlp.vim.git"


"19: easy-motion
" {{{
Bundle "https://github.com/easymotion/vim-easymotion.git"
let g:EasyMotion_smartcase = 1
"let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
map <Leader><leader>h <Plug>(easymotion-linebackward)
"map <Leader><Leader>j <Plug>(easymotion-j)
"map <Leader><Leader>k <Plug>(easymotion-k)
map <Leader><leader>l <Plug>(easymotion-lineforward)
" 重复上一次操作, 类似repeat插件, 很强大
map <Leader><leader>. <Plug>(easymotion-repeat)

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


"20 SearchComplete
" 一个很烂的插件,将我command
" 模式下的<tab>映射为对buffer的补全,当我想补全命令时,总是刷新我的输入. Shit
" 难道是因为我没有好好读读文档,所以不会使用?
"Bundle "https://github.com/SailorCrane/SearchComplete.git"
"20-1 CmdlineComplete
Bundle "CmdlineComplete.git"


"21 ShowMarks 显示使用m所下的标记
"Bundle "ShowMarks.git"

Bundle "kshenoy/vim-signature"


"22 vim-surround
Bundle "tpope/vim-surround.git"
" cs"'
" ds"
" ysiw"


"23 repeat ,和surround同一个作者,主要用于 重复执行surround的操作
"  ysiW": 给W添加"
"  yss" : 给一行添加"
Bundle "tpope/vim-repeat.git"


"25 git and vertion control about
" {{{
Bundle "tpope/vim-fugitive.git"
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gc :Gcommit<cr>
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gl :Glog<cr>
nnoremap <leader>gp :Git push<cr>
nnoremap <leader>gw :Gwrite<cr>

Bundle "airblade/vim-gitgutter"

"Bundle "mhinz/vim-signify"
" this support git/vcs..., no use now
" }}}


"26 matchit 注释这个插件, 因为vim已经自带了
"只用在vimrc中添加 runtime macros/matchit.vim即可
"Bundle "matchit.zip.git"


"27 EasyGrep
Bundle "EasyGrep.git"


" tlib: vim util fun
" snipmate also need
Bundle "tomtom/tlib_vim.git"


"34 L9: vim library, vim script util.(和tlib一样)
"暂时先不启用这个库,需要时再打开注释:<leader>ci toggle注释
Bundle "L9.git"


"28 SnipMate
"Bundle "garbas/vim-snipmate.git"
" the tow plugins below is necessary for snipmate
"Bundle "MarcWeber/vim-addon-mw-utils.git"
" snippets is  optional for snipmate
"Bundle  "honza/vim-snippets.git"


"29 vimim
"Bundle "vimim/vimim.git"

"30 Chiel92/vim-autoformat
Bundle "Chiel92/vim-autoformat.git"


"31 Yankring,因为很多快捷键冲突,所以先将这个插件注释
Bundle "YankRing.vim.git"
nnoremap  <leader>ys  :YRShow<cr>
nnoremap  <leader>yc  :YRClear<cr>


"32 color view
Bundle "http://git.oschina.net/CraneAgain/xterm-color-table.vim.git"


" no vundle#end
"call vundle#end()           " required with vundle#begin()


"35 multiple-cursor
Bundle "https://github.com/terryma/vim-multiple-cursors.git"
let g:multi_cursor_start_word_key='g<C-n>'     "选择单词"
let g:multi_cursor_start_key='gi<C-n>'           "在单词中的,也被选择"


" Align plugin
" {{{
"36-1 godlygeek/tabular
Bundle "godlygeek/tabular.git"

"36-2 Align  vim-script 294
"Bundle "Align.git"

"36-3 junegunn/vim-easy-align
" 注意这里使用nore非递归映射是不起作用的,可能因为这里使用了<Plug>的原因,<Plug>不是vim底层的操作,所以映射之后也没有意义
"Bundle "junegunn/vim-easy-align.git"
"vmap <Leader>a <Plug>(EasyAlign)
"nmap <Leader>a <Plug>(EasyAlign)

"if !exists('g:easy_align_delimiters')
      "let g:easy_align_delimiters = {}
"endif
"let g:easy_align_delimiters['#'] = { 'pattern': '#', 'ignore_groups': ['String']  }
" }}}


"37 expand-region
Bundle "https://github.com/terryma/vim-expand-region.git"
vmap v <Plug>(expand_region_expand)
vmap V <Plug>(expand_region_shrink)


" extend target
Bundle "wellle/targets.vim"


"38 gundo stand for gnu undo
Bundle "gundo.git"


"39 FuzzyFinder : need L9 library
Bundle "FuzzyFinder.git"


"40 ShowTrailingWhiteSpace
Bundle "ShowTrailingWhitespace.git"


"42 FencView: fencview
Bundle  "mbbill/fencview.git"
"Bundle  "fencview.git"


"43 ack.vim
Bundle "ack.vim.git"


"44 mkdir, very simple
Bundle  "https://github.com/pbrisbin/vim-mkdir.git"


"45 visual-star search
" 这是vim-practical 作者的一款插件, 实现很简单
" 在«vim-practical»技巧86中, 有这个技巧的实现, 并且书中还有一个关于/ 和?的bug
Bundle "https://github.com/nelstrom/vim-visual-star-search.git"


"46 qargs
Bundle "https://github.com/nelstrom/vim-qargs.git"


"47 text-object-entire: file object
Bundle "https://github.com/kana/vim-textobj-user.git"
Bundle "https://github.com/kana/vim-textobj-entire.git"


"49 Mark
" 因为'r 和 'n寄存器重复, 所以先注释掉这个插件
"Bundle "Mark.git"


"50 VOoM
Bundle "VOoM.git"


"51 calendar
Bundle "https://github.com/itchyny/calendar.vim.git"


"52 visincr 提供增长数列功能
Bundle "VisIncr.git"


"55 ReplaceWithRegister
Bundle "ReplaceWithRegister.git"


"56  vim-exchange :learned from vimcasts
Bundle "tommcdo/vim-exchange.git"


"57  vim-unimpaired : toggle twince, paste once
" h paste
" h pasteoggle
Bundle  "tpope/vim-unimpaired.git"


"59  lastpat
" vi/ 选择模式选中下一次匹配
" 鸡肋, 因为vim的gn, gN 已经可以在选择模式中, 选中下一次匹配了
"Bundle  "kana/vim-textobj-lastpat.git"


"60 vim-abolish
"使用:S 命令, 交换词
":S/{good, bad}/
Bundle "tpope/vim-abolish.git"


"61 emmet-vim
"快速写html/css


"62 indent-guide
Bundle "nathanaelkane/vim-indent-guides.git"


" 64 auto-fold: zf add marker, zd delete marker
"" 比较烂, 自动添加marker 不太好. 而且有了这个插件, 每次写入文件, 就跳行...
"Bundle "AutoFold.vim.git"


" 65 drawit: 使用vim draw文本图.
Bundle "hrj/vim-DrawIt.git"


" 66 file-template
Bundle "aperezdc/vim-template.git"
let g:templates_directory = $Crane_Dot_Vim . "/templates"

" 67 Mark.vim 可以同时高亮多个词: 比如同时高亮好几个变量.
"Bundle  "Tuxdude/mark.vim.git"


" 68 速写 html/css/js(javascript) : 官方插件. ZenCoding renamed to Emmet.vim
"Bundle  "ZenCoding.vim.git"
Bundle  "Emmet.vim.git"



" 71 vim-session插件比vim-workspace好用很多
Bundle "https://github.com/thaerkh/vim-workspace.git"

Bundle "xolox/vim-misc.git"
Bundle "xolox/vim-session.git"
:let g:session_autosave = 'no'
:let g:session_autoload = 'no'


" 72 vim-tmux-navigator
Bundle "christoomey/vim-tmux-navigator.git"


" 72 vimwiki
"Bundle "vimwiki/vimwiki.git"


" sort motion
Bundle "christoomey/vim-sort-motion.git"


" project
Bundle "tpope/vim-projectionist"
