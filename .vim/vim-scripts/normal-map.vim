" vim: set fdm=marker  fdl=0: vim modeline( set )
" zM: fold all, zR: expand all

" 1-1 ; ------> :
" {{{
nnoremap  ;  :
xnoremap  ;  :

"nnoremap  :  ;
"xnoremap  :  ;

" '&' repeat last substitute, same as ':s'

" 回车功能由<Plug>Sneak_; 替代
"nmap <CR>  <Plug>Sneak_;
"xmap <CR>  <Plug>Sneak_;

nnoremap  q;       q:
nnoremap  q<CR>    q
" }}}

" 1-2 j, k 连行
" {{{

nnoremap  <up>   gk
nnoremap  <down> gj
nnoremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
nnoremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

" }}}

" 1-3 这样'可以定位到具体column
" {{{
nnoremap  '  `
nnoremap  `  '
nnoremap <C-6> <C-6>`"
nnoremap <C-g> 2<C-g>
" }}}

" 1-4 set fileencoding=utf-8 fileformat=unix
"{{{
"    change encoding, and write to disk.
"    eu stand for: encoding unix(utf-8 + unix-line)
nnoremap <Leader>eu  :set fileencoding=utf-8 fileformat=unix<CR>:w<CR>
"}}}

" 2-1 Toggle  something
"{{{
nnoremap  <Leader>tN   :set nu!  rnu!    nu? rnu? <CR>
nnoremap  <Leader>th   :set cursorline!    cursorline?<CR>
nnoremap  <Leader>tc   :set cursorcolumn!  cursorcolumn?<CR>
nnoremap  <Leader>tl   :set list!  list?<CR>

" toggle fold(closed <------> opend)
nnoremap <Space> za

" 用paste map更好些, 支持所有模式
nnoremap <Leader>tp   :set paste! paste?<CR>
"}}}

" 2-2 toggle menu and toolbar
" {{{
"regexp matches      =~      =~#     =~?
" h  =~#
" 使用正则检测guioptions中是否有'T' toolbar标志, 如果没有, 就显示. 有就隐藏
" 注意: 第一个正则检测是'T' 是字符串, 有单引号标志,
" 后面的 set guioptions-=T, 则没有单引号: 这个是在命令行手动敲入,
" 才检测出来的.刚开始写错了, 一直不能工作
nnoremap  <silent>  <C-F5>  :if  &guioptions =~#  'T' <Bar>
                                 \set guioptions-=T<Bar>
                                 \set guioptions-=m<Bar>
                            \else <Bar>
                                 \set guioptions+=T <Bar>
                                 \set guioptions+=m <Bar>
                            \endif<CR>
" }}}

" 2-3 :tabkey和:retab 命令(在tab和space之间切换)
"{{{
" 切换是否显示空白标志:
" 结合 set listchars=tab:▸\ ,eol:¬ 使用
" 在makefile中, 查看是否前置空白是不是tab, 很有用

" tab to space(4 space), need set expandtab
" tab to space(4 space), need set noexpandtab
" 使用 "|" 去分割命令, 而不是多次执行":"命令
nnoremap  <Leader>rt  :set expandtab   tabstop=4 <bar> %retab <CR>
nnoremap  <Leader>rT  :set noexpandtab tabstop=4 <bar> %retab!<CR>

" visual模式下的retab, 注意1. 执行两次命令之间需要gv再次选中选取选区
"                      注意2. 执行第一次命令时, 要使用<C-u> 去掉":'<,'>"
"
xnoremap  <Leader>rt  :<C-u>set expandtab   tabstop=4<CR>gv: retab <CR>
xnoremap  <Leader>rT  :<C-u>set noexpandtab tabstop=4<CR>gv: retab!<CR>
" '<,'> 不支持  :set expandtab
"xnoremap  <Leader>rt  :set expandtab   tabstop=4 <bar> retab <CR>
"xnoremap  <Leader>rT  :set noexpandtab tabstop=4 <bar> retab!<CR>
"}}}

" 2-4 xxd(在文本和hex之间切换)
"{{{
nnoremap  <Leader>xd  :%!xxd    <CR>
nnoremap  <Leader>xD  :%!xxd -r <CR>
xnoremap  <Leader>xd  : !xxd    <CR>
xnoremap  <Leader>xD  : !xxd -r <CR>
"}}}

" 3 使用n和N搜索前, 先激活hlsearch选项
" {{{
" 智能的'n' 和'N'不习惯
"nnoremap <expr> n  'Nn'[v:searchforward]
"nnoremap <expr> N  'nN'[v:searchforward]

nnoremap  n           :set hlsearch<CR>n
nnoremap  N           :set hlsearch<CR>N
nnoremap  <Leader>/   :set hlsearch!  hlsearch?<CR>
nnoremap  <Leader>i   :set ignorecase!  ignorecase?<CR>
" }}}

" 4 add line number: not enabled
"{{{
" add line number
" :%s/^/\=line(".") . ". "/g
"}}}

" 5-1  quick edit: v:vimrc, n:normal, i:insert, p:plugin-bundle, a:abbrev
" {{{
nnoremap  <Leader>eb  :vsplit ~/.bashrc<CR>
nnoremap  <Leader>ez  :vsplit ~/.zshrc<CR>
"nnoremap  <Leader>eP  :vsplit ~/.profile<CR>    # 太容易编辑了, "让出快捷键给plugin-python.vim

" jquery network edit
nnoremap  <Leader>ej  :vsplit https://code.jquery.com/jquery-3.2.1.js<CR>

nnoremap  <Leader>eA  :vsplit ~/.subdir/myAlias.sh<CR>
nnoremap  <Leader>eF  :vsplit ~/.subdir/myFunctions.sh<CR>
nnoremap  <Leader>eN  :vsplit ~/.subdir/net-operation.sh<CR>

" eD stand for:  edit  Debug.
nnoremap  <Leader>eD  :vsplit ~/.gdbinit<CR>
nnoremap  <Leader>eG  :vsplit ~/.gitconfig<CR>
nnoremap  <Leader>es  :vsplit ~/.subversion/config<CR>
nnoremap  <Leader>eT  :vsplit ~/.tmux.conf<CR>

" ./file  edit
"nnoremap  <Leader>em  :vsplit ./makefile<CR>
" <leader>em 编辑当前目录下的Makefile/makefile, 如果不存在, 编辑Makefile
nnoremap  <Leader>em  :call EditMakefile()<CR>
nnoremap  <Leader>eM  :call EditCMakeLists()<CR>

" 记录问题
nnoremap  <Leader>eq  :vsplit ./question-thunder.txt<CR>
" 记录工作Iterms
nnoremap  <Leader>ew  :vsplit ./work-record.txt<CR>

" local  ./.vimrc  and  ./.gvimrc edit
nnoremap  <Leader>elv :vsplit $MYVIMRC<CR>
nnoremap  <Leader>elg :vsplit $MYGVIMRC<CR>

" mobile rc  ./.vimrc and ./.gvimrc  edit
nnoremap  <Leader>ev  :vsplit  $Crane_Vim_Home/.vimrc<CR>
nnoremap  <Leader>eg  :vsplit  $Crane_Vim_Home/.gvimrc<CR>

" vim script edit
nnoremap  <Leader>eV  :vsplit  $Vim_Scripts/visual-map.vim<CR>
nnoremap  <Leader>ef  :vsplit  $Vim_Scripts/function.vim<CR>
nnoremap  <Leader>en  :vsplit  $Vim_Scripts/normal-map.vim<CR>
nnoremap  <Leader>ei  :vsplit  $Vim_Scripts/insert-map.vim<CR>
nnoremap  <Leader>ec  :vsplit  $Vim_Scripts/command-map.vim<CR>
nnoremap  <Leader>eo  :vsplit  $Vim_Scripts/opending-map.vim<CR>

nnoremap  <Leader>et  :vsplit  $Crane_Dot_Vim/test/HarryPotter-Stone.txt<CR>

" <Leader>eb b stand for bundle
nnoremap  <Leader>eb  :vsplit  $Vim_Scripts/myBundle.vim<CR>
nnoremap  <Leader>ep  :vsplit  $Vim_Scripts/python.vim<CR>
"nnoremap  <Leader>ef  :vsplit  $Vim_Scripts/autocmd.vim<CR>
" eC C stand for command: command mode/autocmd
nnoremap  <Leader>eC  :vsplit  $Vim_Scripts/autocmd.vim<CR>

"nnoremap  <Leader>ee  :vsplit  $Vim_Scripts/example/vimrc_example.vim<CR>
nnoremap  <Leader>eE  :vsplit  $Vim_Scripts/example/<CR>

nnoremap  <Leader>eO  :vsplit  $Plugin_Script/plugin-common.vim<CR>
nnoremap  <Leader>eP  :vsplit  $Plugin_Script/plugin-python.vim<CR>
nnoremap  <Leader>eS  :vsplit  $Plugin_Script/plugin-scheme.vim<CR>

nnoremap  <Leader>ed  :vsplit  $Crane_Dot_Vim/doc/<CR>

" 编辑good-idea-script.vim, 记录最新学习情况
" I表示Idea
nnoremap  <Leader>eI  :vsplit  $Vim_Scripts/good-idea-script.vim<CR>

" Prompt to open file with same name, different extension
" from  https://github.com/nelstrom/dotfiles/blob/master/vimrc
" <CR>用来完成 <C-r>=
"noremap  <Leader>er   :vsplit <C-R>=expand("%:r")."."<CR>
" }}}

" 5-2 <Leader>sv source .vimrc or .gvimrc
" {{{
" :let &filetype=&filetype equals to  :set filetype=<tab>目的是为了设置filetype, 触发autocmd
if has('gui_running')
    nnoremap <silent>  <Leader>sv :source $MYVIMRC<CR>:source $MYGVIMRC<CR>:let &filetype=&filetype<CR>
else
    nnoremap <silent>  <Leader>sv :source $MYVIMRC<CR>:let &filetype=&filetype<CR>
endif
" }}}


" 6 quick quit and write
" {{{
nnoremap  <Leader>q  :q<CR>

nnoremap  <Leader>aq :qa<CR>
nnoremap  <C-c>      :qa<CR>

nnoremap  <Leader>ee :e!<CR>

nnoremap  <Leader>w  :update<CR>

" warning: terminal not support <C-s>, you need <C-q> to quit <C-s>
"nnoremap  <C-s>        :Ack  <C-r><C-w> % <CR>
nnoremap  <C-w>s       :Ack  <C-r><C-w> % <CR>
" }}}

" 7-1 buffer 操作
" {{{
nnoremap <C-^>     <C-^>:call ShowBufName()<CR>

" 文件很多时, 不太有用. 并且只有在知道buff num情况下, 才有用
" 所以结合air-line使用会更好
nnoremap <Leader>1      :b  1<CR>
nnoremap <Leader>2      :b  2<CR>
nnoremap <Leader>3      :b  3<CR>
nnoremap <Leader>4      :b  4<CR>
nnoremap <Leader>5      :b  5<CR>
nnoremap <Leader>6      :b  6<CR>
nnoremap <Leader>7      :b  7<CR>
nnoremap <Leader>8      :b  8<CR>
nnoremap <Leader>9      :b  9<CR>
nnoremap <Leader>0      :b 10<CR>
" }}}

" 7-2 tabpage 操作
" {{{
" tabpage jump
nnoremap L  gt
nnoremap H  gT

" tabpage operation
"nnoremap tn      :tabnew<CR>:NERDTreeFocus<CR>
"nnoremap tn      :tabnew<CR>:NERDTree<CR>
nnoremap tn      :tabnew   <CR>
nnoremap tc      :tabclose <CR>
nnoremap to      :tabonly  <CR>
nnoremap tm      :tabmove<Space>
nnoremap te      1gtgT

nnoremap <A-1>      1gt<CR>
nnoremap <A-2>      2gt<CR>
nnoremap <A-3>      3gt<CR>
nnoremap <A-4>      4gt<CR>
nnoremap <A-5>      5gt<CR>
nnoremap <A-6>      6gt<CR>
nnoremap <A-7>      7gt<CR>
nnoremap <A-8>      8gt<CR>
nnoremap <A-9>      9gt<CR>
nnoremap <A-0>     10gt<CR>

"nnoremap <A-q>     11gt<CR>
"nnoremap <A-w>     11gt<CR>
" 12 tabpage is enough
nnoremap \q     11gt<CR>
nnoremap \w     11gt<CR>
" }}}

" 7-4 window 操作:用Ctrl切换窗口
" {{{

" tmux 插件中已经有相应的映射了, 并且做的更好可以跳转到tmux pane
"if !maparg('<C-h>', 'n')
    "nnoremap <C-h>  <C-w>h
    "nnoremap <C-l>  <C-w>l
    "nnoremap <C-j>  <C-w>j
    "nnoremap <C-k>  <C-w>k
"endif

" 上下左右切换窗口, 并将切换到的窗口最大化: 最大化函数会显示文件名
nnoremap  <C-w>h     <C-w>h:call MaxCurrentWindow()<Cr>
nnoremap  <C-w>l     <C-w>l:call MaxCurrentWindow()<Cr>
nnoremap  <C-w>j     <C-w>j:call MaxCurrentWindow()<Cr>
nnoremap  <C-w>k     <C-w>k:call MaxCurrentWindow()<Cr>
" }}}

" 7-5 最大化窗口等...
" {{{
" all and equal
nnoremap  <C-w>a  :call MaxCurrentWindow()<CR>
nnoremap  <C-w>e  <C-w>=

" 因为水平最大化用的多, 所以和_切换
nnoremap  <C-w>-  <C-w>_

nnoremap  <C-w>\  <C-w>\|

" 高度减
nnoremap  <C-w>_  <C-w>-
nnoremap  <C-w>x  <C-w>-

" fixed size
nnoremap <C-w>f  :set wfh! wfh? wfw! wfw?<CR>

" q t z b 四个角落:有时候因为布局原因不灵
nnoremap <C-w>q   <C-w>=<C-w>t:call MaxCurrentWindow()<CR>:let g:tagbar_left = 1<CR>
nnoremap <C-w>z   <C-w>=<C-w>b<C-w>h:call MaxCurrentWindow()<CR>:let g:tagbar_left = 1<CR>
nnoremap <C-w>t   <C-w>=<C-w>t<C-w>l:call MaxCurrentWindow()<CR>:let g:tagbar_left = 0<CR>
nnoremap <C-w>b   <C-w>=<C-w>b:call MaxCurrentWindow()<CR>:let g:tagbar_left = 0<CR>

" 默认<C-w>T会将当前buffer移动到新tab
" }}}

" 7-6 显示窗口大小和坐标: 关于窗口设置的说明
" {{{
" winsize 设置窗口 width 和 height. 可以用来在gvimrc中设置1000, 1000.
" 因为如果winsize很大, 窗口也会相应变大. 这样gvim 启动时, 可以自动最大化
" winpos 左上角打印X 和 Y坐标
" winwidth(0) 和 winheight(0) 函数显示窗口宽度和高度
" }}}

" 8 jump-list. <c-o>: <tab> go ahead, <s-tab> go behind
"{{{
" <tab>   ------> <C-i>
" <S-tab> ------> <C-o>
nnoremap <s-tab>  <C-o>
"}}}

" 9 quick line switch:快速交换两行, 已删除
" {{{
" unimpaired: 中 [e  和]e 已经可以exchanged了
"nnoremap  <Leader>j  ddp
"nnoremap  <Leader>k  kddpk
" }}}

" 10 case toggle. 因为'~'会向右移动一位, 所以用v~
nnoremap  gt  v~

" 11-1 当前行最左,最右. 屏幕最上最下
" {{{

" 这样上下左右, 都和g有关了, 非常棒
" gh本来是进入select模式, 比较鸡肋, 不需要
nnoremap gh  ^
nnoremap gl  $

nnoremap gk  H
nnoremap gj  L
nnoremap gm  M

"nnoremap   <h    H
"nnoremap   <l    L
"nnoremap   <m    M

" }}}

" 11-2 滚动少许行
" {{{
"nnoremap  <Leader>u   5<C-y>
"nnoremap  <Leader>f   5<C-e>
nnoremap  <C-y>   8<C-y>
nnoremap  <C-e>   8<C-e>

xnoremap  <C-e>   8<C-e>
xnoremap  <C-y>   8<C-y>

" 之前的<C-d> down/up半页, 太多了
nnoremap  <C-d>   8j
nnoremap  <C-u>   8k

" 如何使用原始的<C-d> <C-u>, 答:使用前导<Leader>
nnoremap  <Leader><C-d>   <C-d>
nnoremap  <Leader><C-u>   <C-u>
" }}}

" 12 segment: line ----> two line
" {{{
nnoremap <Leader>si   i<CR><ESC><up>g_
"nnoremap <Leader>sa   a<CR><ESC><up>g_
" }}}

" 13 delete all trailing White Space:  根据ShowTrailingWhiteSpace插件
nnoremap  <Leader>xw  :%s/\s\+$//g<CR>:let @/=''<CR>

" 15-1 行中添加内容
" {{{
nnoremap  <Leader>i;    ][a;<ESC>:write<CR><C-o>
nnoremap  <Leader>i{    o{<CR><CR>}<up>

" <Leader>if  :使用A, 构造可重复操作. A之后一直处于插入模式中.
nnoremap  <Leader>if    A<BS><CR>{<CR><CR>}<up>

nnoremap  <Leader>l{    A {  }<left><left>
nnoremap  <Leader>l;    A;<ESC>:write<CR>
nnoremap  <Leader>l:    A:<ESC>:write<CR>
nnoremap  <Leader>l,    A,<ESC>:write<CR>
nnoremap  <Leader>l.    A.<ESC>:write<CR>
nnoremap  <Leader>l!    A!<ESC>:write<CR>

" add '<Space>' + '\': Makefile
nnoremap  <Leader>l\    A<Space>\<ESC>
nnoremap  <Leader>lx    A<BS><ESC>:write<CR>

" clear current line
nnoremap  dl    S<ESC>

" 删除文件空行(只有tab, 空格, 回车)
"'<,'>g/^\s*$/ d

" }}}

" 15-2 添加空格'[w', ']w'
" {{{

"nnoremap  <Leader>i<Space>   i<Space><ESC>l
"nnoremap  <Leader>a<Space>   a<Space><ESC>h
"w means whitespace
nnoremap  [w   i<Space><ESC>l
nnoremap  ]w   a<Space><ESC>h
nnoremap  [W   i<Space><Right><Space><ESC>h

xnoremap  [w   I<Space><ESC>
xnoremap  ]w   A<Space><ESC>
xnoremap  [W   I<Space><ESC>gvlolA<Space><ESC>

" 主要用于C/Cpp 添加去地址符号, 获得指针
nnoremap  <Leader>i&        i&<ESC>l
nnoremap  <Leader>a&        a&<ESC>h

nnoremap  <Leader>in        i1234567890<ESC>l
nnoremap  <Leader>an        a1234567890<ESC>l

" 写注释文档时: 可能在当前字符后添加:
nnoremap  <Leader>i:        i:<ESC>l
nnoremap  <Leader>a:        a:<ESC>h

" c 代表 colon ":", 因为":"不太好按,还要使用shift键,
" 并且<Leader>i;也被使用了. 所以不能使用; 代替 :
nnoremap  <Leader>ic        i:<ESC>l
nnoremap  <Leader>ac        a:<ESC>h
" }}}

" 15-3 yp 复制并粘贴
" {{{

"nnoremap  yp  yyp
"nnoremap  yP  yyP

" :t :copy, copy don't effect register
nnoremap  yp  :t.   <CR>
nnoremap  yP  :t .-1<CR>
" }}}

" 15-4 delete and yank
"{{{

" delete hole
" dh的功能, 可以使用X来完成:h dh, :h X, 删除光标左边的字符
" 使用示例: dhd == "_dd,  dhiw == "_diw,
" 使用基本和d相同,只不过不影响匿名寄存器
" 这里不使用map,而是使用nnoremap, 也可以工作
nnoremap  dh  "_d

" forward删除到括号, c stand for closing
nnoremap  dc  dt)

" backward删除到括号
nnoremap  dC  dT(

"
nnoremap  d]  dt]
nnoremap  d[  dT[

nnoremap  d"  dt"
nnoremap  d'  dt'


" 复制
" forward复制到括号
nnoremap  yc  yt)
" backward复制到括号
nnoremap  yC  yT(

nnoremap  Y  y$
"}}}

" 15-5 粘贴系统寄存器, inoremap 中也有类似的映射, 见 insert-map.vim
" {{{
nnoremap  <Leader><Leader>p  "+p
nnoremap  <Leader><Leader>P  "+P
" }}}

" 15-6 quick insert date at current line: ld 插在行尾, id insert到行首
" {{{

" ld 表示 line date
" :. read !date -u<CR>, 在当前行的之下(下一行)插入当前时间日期, 并且插入后, 光标自动跳到下一行
" k移动到上一行, J join 两行, 完成插入
" trick: 这里的两个read单词, 是根据Tabularize对齐的,
" :Tabularize可以根据单词对齐, 而不仅仅是字符. 非常强大
" 这里不适用date -u, 而使用date, 因为-u 是格林威治绝对时间, 不是本地时间
"nnoremap  <Leader>ld  :.   read !date -u<CR>kJ
nnoremap  <Leader>ld  :.   read !date <CR>kJ

"nnoremap  <Leader>id  :.-1 read !date -u<CR>J
nnoremap  <Leader>id  :.-1 read !date -u<CR>J
" }}}  2017年 02月 13日 星期一 21:04:17 CST

" 15-7 quick :substitute, copy, move
" {{{
"nnoremap  <Leader>ss  :%s<Space>///g<left><left><left>  "有空格是个bug,
nnoremap  <Leader>ss  :%s///g<left><left><left>
nnoremap  <Leader>sC  :call Sub_chinese_punc()<CR>

" sub with "\r" (unix line)
nnoremap  <Leader>mm    :%s/<C-v><C-M>/\r/g<CR>

"这个主要是针对 c-support 的 \pind, 因为默认生成的是 FILE_INC 宏
nnoremap  <Leader>sh  :%s/INC/H_/g<CR>

" move/copy
nnoremap  <Leader>gm  :g// copy $<Left><Left><Left><Left><Left><Left><Left><Left>
xnoremap  <Leader>gm  :g// copy $<Left><Left><Left><Left><Left><Left><Left><Left>
" }}}

" 15-8 快速缩进{  } 中的代码块, 使用[, ]
" {{{
" 缩进{} 内部
nnoremap  <i[   <i{
nnoremap  >i[   >i{

" 和上述功能相同
nnoremap  <i]   <i{
nnoremap  >i]   >i{

" 连带{}一起缩进
nnoremap  <a[   <a{
nnoremap  >a[   >a{

" 和上述功能相同
nnoremap  <a]   <a{
nnoremap  >a]   >a{
" }}}

" 15-9 reverse join two line: 在第一行上执行
nnoremap  <Leader>rj  ddpkJ

" 15-10 append  '------>', '============'
"{{{
" a append, r arrrow
" 支持前面加次数:
" 这个应该是vim内置对于映射次数的支持。vim内置对于映射次数的支持.  5,ar  插入箭头5次.
"nnoremap  <Leader>ar  a------><ESC>
" 插入后, 直接进入插入模式, 不再返回normal mode
nnoremap  <Leader>ar  a------>
nnoremap  <Leader>ra  a<------
inoremap  <Leader>ar  ------>
inoremap  <Leader>ra  <------

nnoremap  <Leader>a=       40a=<ESC>20hi<Space><Space><Left>
imap      <Leader>a=  <ESC><Leader>a=
"}}}

" 15-11 "在当前行的下一行/前一行插入数字列: o<ESC>0到新行的首列
"{{{
nnoremap  ,,n   o<ESC>0i 1<CR>2<CR>3<CR>4<CR>5<CR>6<CR>7<CR>8<CR>9<CR><Backspace>10<ESC>9k
nnoremap  ,,N   <ESC>0i 1<CR>2<CR>3<CR>4<CR>5<CR>6<CR>7<CR>8<CR>9<CR><Backspace>10<CR><ESC>10k
"}}}

" 16 match something
"{{{
" show no space: upper case "S"
nnoremap <Leader>S     /\S\+<CR>

"  search error + trace(ignore case)
noremap  <Leader>er   :e!<Cr>/\v(error\|trace)\c<CR>
"}}}

" 17 输出当前缓冲区文件的绝对路径
nnoremap  <Leader>lp  :echo  expand('%:p')<CR>

" 18 如果启用了ftplugin/man.vim插件(runtime  ftplugin/man.vim)
" {{{
if  exists(':Man')
    "if maparg('K') == ''    " has no map
        "nmap  <unique> K  <Leader>K
    "endif
    "注意,因为<Leader>K,也是一个man.vim的映射,而不是vim内部的基本功能,所以不能使用noremap映射,而要使用nmap
    "只有当最终映射目标为vim直接输入后的功能时:比如vim自带功能,或者命令行输入...才能使用nnoremap
    "nmap <Leader>K 可以查看到 映射的最终函数
endif
" }}}

" 19 quick fix 快速跳转: 有用, 但没想到好的快捷键
" {{{
" unimpaired [q ]q to 就可以在quickfix之间切换
"nnoremap cn  :cnext<CR>
"nnoremap cp  :cprevious<CR>
"nnoremap <Leader>co  :cclose<CR>
"nnoremap coo :cclose<CR>
" }}}

" 21-1 generate tags: ctags + cscope
"{{{
" !ctags -R .
" !cscope  -Rbq
nnoremap  <Leader>ct  :!ctags -R --fields=+lS .<CR>:!cscope  -Rbq<CR><CR>
"}}}

" 21-2 cscope的帮助手册中推荐了一些快捷键的用法,
" {{{

"注意标志s, g, c ,t 和后面的 <C-R> 之间是有空格的, 因为分别是不同的参数, 这个很好理解.
"nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
"nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>

" 这个是设定是否使用 quickfix 窗口来显示 cscope 结果, 用法在后面会说到。
set cscopequickfix=s-,c-,d-,i-,t-,e-

nmap <Leader>sr :cs reset<CR>:cs add .<CR>
nmap <Leader>sa :cs add .<CR>

" 下面映射的两个<CR>, 一个为执行expand("<cword>"), 另一个执行cs命令
" 查看函数定义所在, 等同于 <C-]>, global: 定义所在
nmap <Leader>sg :cs find g <C-R>=expand('<cword>')<CR><CR>

" 查看谁调用了函数: :cnext, 或者cn 跳向下一个, cp 跳向前一个.
nmap <Leader>sc :cs find c <C-R>=expand('<cword>')<CR><CR>
"nmap <Leader>si :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>

" }}}

" 22 统计模式/出现次数: word count/number
nnoremap  <Leader>cw  :%s/<C-r><C-w>//gn<CR>

" 23-1 跳转到/*, 或者跳转到 *, 跳转到"#" 注释
" {{{
nnoremap  </  [/
nnoremap  >/  ]/

nnoremap  <*  [/
nnoremap  >*  ]/

nnoremap  <#  [#
nnoremap  >#  ]#
" }}}

" 23-2 跳到main函数: C/C++
"{{{
" 通过正则匹配 int  main( .*)
nnoremap  gm  /\v(int)?\s+main\s*\(.*<CR>
"}}}

" 24 get full path of file
"{{{
"nnoremap  <Leader>cf  :let @+=expand("%:p")<CR>
" 将文件绝对路径获取到终端剪贴板,可以在终端<shift + insert> 粘贴
" 注意@* 才是终端剪贴板
" gdb 支持源文件绝对路径下断点:  b /a/b/c.cpp : 120
" 如果以后<Leader>cf被占用了, 那么使用<Leader>gf
" cf stand for "copy file name"
nnoremap  <Leader>cf  :let @*=expand("%:p")<CR>
"}}}

" 25 chmod +x, open.
"{{{
"nnoremap  <Leader>ex  :call ChmodExec()<CR>
" 第二个<CR>用于从shell返回, 最后:w 保存文件状态
nnoremap  <Leader>ex  :!chmod +x %<CR><CR>:w<CR>

" eo stand for "execute open"
" 使用gnome-open 选择合适的程序, 打开当前文件.
" 主要用于html, 最后一个<CR>用来输入后, 结束程序等待输入状态.
"nnoremap  <Leader>eo  :!gnome-open %<CR><CR>
" 如果是普通文件: 使用gnome-open 打开
" 如果是.md文件, 使用markdown插件的 :InstantMarkdownPreview命令打开
nnoremap  <Leader>of  :call OpenFile()<CR>
"}}}

" 26 sudo write
"{{{
" w !command,  write current buf to stdin of command(note: is buf, not file)
" > /dev/null drop stdout
nnoremap  <Leader>sw  :<C-u>w  !sudo tee % >/dev/null<CR>
"}}}

" 99 关于normal 模式中惯用的n 和 p的总结:
"{{{
" 其中CtrlP插件的<C-p> 被 <Leader>sp代替
" QuickFix 使用:cn, cp 直接下一个,或者前一个
" Multiple Cursor 的 C-n 被 g<C-n>所取代
" <C-p> 和 <C-n>被映射到了 YankRing中:让n永远和p快乐的在一起窝
" <Leader>n <Leader>p 还是buffer next 和 buffer previous, 自己已经用习惯了
"}}}

