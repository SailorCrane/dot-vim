
"=================== imap =====================
" 1  insert -----> normal
"{{{
" map jk to esc
" if you really want to input "jk", please input <C-v>jk
" map <Esc> to <nop> is to force me use "jk"
inoremap  jk <Esc>:update<CR>
inoremap  kj <Esc>:update<CR>

cnoremap  jk <C-c>
cnoremap  kj <C-c>

xnoremap  q  <Esc>
"inoremap  jk <Esc>
"inoremap  kj <Esc>
"}}}

" 2  arrrow : with ctrl
" <arrrow> set: left, right, up, down
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

inoremap <C-f> <Esc>lWi
inoremap <C-b> <Esc>Bi


" 3 ctrl- : quick  edit
"{{{
" <C-d>和插件中某个映射重合,插件每次启动都要检测,然后echom
" message,好烦,所以取消inoremap <C-d> 映射
"inoremap  <silent> <C-d>  <Esc>ddi
"inoremap  <C-w>  <Esc>:w<CR>a
" NOTE:  <C-w>的习惯还是不能改: 无论是在插入模式, Ex模式, 还是bash中
" <C-s>在终端下, 依旧是停止回显, 只能在gvim中使用, 所以后面添加了<C-b>
inoremap  <silent> <C-s>  <Esc>:w<CR>a

"  和 i_ctrl-e 一样,也是没有什么卵用的按键, 所以映射为复制一行
" 并且光标移动到复制后的行.这是因为使用中,发现一般复制后,更多会移动到
" 复制行
" i_ctrl-y 用来在jedi-vim快补全时补全, 所以不用在这里
"inoremap  <C-c>  <Esc>yypA

" <C-o> 在插入模式下,还有别的妙用: 本职功能: 进入insert-normal子模式
"inoremap  <C-o>  <Esc>o
"}}}

" 4 <C-z> 屏幕居中
"{{{
" 插入模式下， <CR>
" 调整当前行到屏幕中心,但是AutoPair已经使用<CR>分割配对符号,所以这里要重新选择映射按键
" 因为<C-z>比较难敲击,所以选择<C-s>作为映射键
"inoremap  <C-a>  <Esc>zza
"inoremap  <C-j>  <Esc>zza
"inoremap  <C-cr>  <Esc>zza
" 插入模式下回到屏幕中央,可以使用<C-o>zz代替
inoremap  <C-z>  <Esc>zza
"}}}

" 5 跳到行首和行尾, 因为i_ctrl-a 和 i_ctrl-e, 其实没有什么卵用,
"{{{
" 所以还不如在插入模式下功能, 和bash等编辑模式中统一起来
" I进入到第一个非空白字符前面, A到行尾(没有验证是否是非空白字符)
inoremap  <C-a>   <Esc>I
inoremap  <C-e>   <Esc>A
"inoremap  <C-^>   <Esc><s-^>i
"inoremap  <C-^>   <Esc>I, I是插入到第一个飞空白字符,将从<s-^>中解放出来了
"inoremap  je   <Esc>$a

" Open new line in  'Insert Mode'
"inoremap <C-o> <Esc>o
" new line below
"inoremap jo <Esc>o
" new line above
"inoremap jO <Esc>O

" Write/Save file at Insert Mode
"inoremap <C-w> <Esc>:w<CR>a
inoremap  jw    <Esc>:w<CR>a

" Back word,注意: 因为是inoremap非递归映射<C-w>是vim底层的操作.
"inoremap <C-b> <C-w>
" <C-w>的习惯还是不能改: 无论是在插入模式, Ex模式, 还是bash中
" ctrl-w都是删除一个单词, 修改它是个不明智的选择, 所以还是用<C-b>去保存文件吧
" 不得已之举
"inoremap <C-b> <Esc>:w<CR>a
"inoremap jb    <C-w>
"}}}

" 6 快速在插入模式中粘贴特殊寄存器:非常好用
"{{{
" 快速粘贴全局剪切板
inoremap  <Leader><Leader>p     <C-r>+
inoremap  <Leader><Leader>+     <C-r>+

" 快速粘贴全局star 剪切板
inoremap  <Leader><Leader>s     <C-r>*
inoremap  <Leader><Leader>*     <C-r>*

" 快速粘贴文件名
"inoremap  <Leader><Leader>f     <C-r>%  ",,f to search
inoremap  <Leader><Leader>%     <C-r>%

" toggle buffer name
inoremap  <Leader><Leader>t     <C-r>#
inoremap  <Leader><Leader>#     <C-r>#
"}}}

" 10 <c-u>: from tpope sensiable vim config
"{{{
" It's awesome
" CTRL-U in insert mode deletes a lot. Use CTRL-G u to first break undo, so
" that you can undo CTRL-U without undoing what you typed before it.
"inoremap  <C-U>  <C-G>u<C-U>
"}}}

" 11 complete map and general insert map(awesome)
"{{{
" pumvisible : pop up menu visible
"inoremap  <expr>  <Tab>   pumvisible()? "\<C-n>":"\<Tab>"
inoremap  <expr>  <C-e>   pumvisible()? "\<C-e>":"\<ESC>A"
inoremap  <expr>  <C-y>   pumvisible()? "\<C-y>":"\<ESC>yypA"

"inoremap  <expr>  <Cr>    pumvisible()? "\<C-y>":"\<Cr>"
inoremap  <expr>  <Esc>   pumvisible()? "\<C-e>":"\<Esc>"

" <up>, <down>
inoremap  <expr>  <Tab>   pumvisible()? "\<Down>":"\<Tab>"
inoremap  <expr>  <C-j>   pumvisible()? "\<Down>":"\<C-j>"
inoremap  <expr>  <C-k>   pumvisible()? "\<Up>":"\<C-k>"

inoremap  <expr>  <C-d>   pumvisible()? "\<Pagedown>":"\<C-d>"
inoremap  <expr>  <C-u>   pumvisible()? "\<PageUp>":"\<C-G>u\<C-U>"

"=================== quick complete =====================
"inoremap ^] ^X^]
inoremap <C-]> <C-x><C-]>
inoremap <C-v> <C-x><C-v>
"inoremap <C-l> <C-x><C-l>
"inoremap ^L ^X^L
"inoremap ^F ^X^F
"inoremap ^D ^X^D

" ===================  =====================
" 为的是能让输入继续, 但不退出补全(缩小补全范围)
inoremap  <expr>  <C-n>   pumvisible()? "\<C-n>":"\<c-n>\<c-p>"
inoremap  <expr>  <C-p>   pumvisible()? "\<C-p>":"\<c-p>\<c-n>"

" dictionary complete(from set dictionary)
inoremap  <C-x><C-k>   <C-x><C-k><C-p>

" current buffer complete
inoremap  <C-x><C-n>   <C-x><C-n><C-p>
inoremap  <C-x><C-p>   <C-x><C-p><C-n>

" user define complete (completefunc, like tmux complete)
inoremap  <C-x><C-u>   <C-x><C-u><C-p>

" omni complete (like jedi)
inoremap  <C-x><C-o>   <C-x><C-o><C-p>

" line complete: yes(c-l like c-p, so there use c-n as next)
inoremap  <C-x><C-l>   <C-x><C-l><C-n>

" tab complete
inoremap  <C-x><C-]>   <C-x><C-]><C-p>


" ===================  =====================

" j, k映射到up, down.
"inoremap  <expr>  <C-n>   pumvisible()? "\<Down>":"\<C-n>"
"inoremap  <expr>  <C-p>   pumvisible()? "\<Up>":"\<C-p>"
"}}}

"=================== iabbrev =====================
"1  My abbreviation at insert mode
iabbrev q@  @qq.com
iabbrev @@  215379@qq.com

"2  my self  abbr
iabbrev jft just for test

