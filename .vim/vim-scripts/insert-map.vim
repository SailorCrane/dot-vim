
" 1  insert -----> normal
" map jk to esc
" if you really want to input "jk", please input <C-v>jk
" map <ESC> to <nop> is to force me use "jk"
inoremap  jk <ESC>
inoremap  kj <ESC>
"inoremap <ESC> <nop>


" 2  arrrow : with ctrl
" <arrrow> set: left, right, up, down
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>


" 3 ctrl- : quick  edit
" <C-d>和插件中某个映射重合,插件每次启动都要检测,然后echom
" message,好烦,所以取消inoremap <C-d> 映射
"inoremap  <silent> <C-d>  <ESC>ddi
"inoremap  <C-w>  <ESC>:w<CR>a
" NOTE:  <C-w>的习惯还是不能改: 无论是在插入模式, Ex模式, 还是bash中
" <C-s>在终端下, 依旧是停止回显, 只能在gvim中使用, 所以后面添加了<C-b>
"inoremap  <C-s>  <ESC>:w<CR>a

" i_ctrl-y 和 i_ctrl-e 一样,也是没有什么卵用的按键, 所以映射为复制一行
" 并且光标移动到复制后的行.这是因为使用中,发现一般复制后,更多会移动到
" 复制后的行, 去操作
inoremap  <C-y>  <ESC>yypA

" <C-o> 在插入模式下,还有别的妙用: 本职功能: 进入insert-normal子模式
"inoremap  <C-o>  <ESC>o
"

" 4 <C-z> 屏幕居中
" 插入模式下， <CR>
" 调整当前行到屏幕中心,但是AutoPair已经使用<CR>分割配对符号,所以这里要重新选择映射按键
" 因为<C-z>比较难敲击,所以选择<C-s>作为映射键
"inoremap  <C-a>  <ESC>zza
"inoremap  <C-j>  <ESC>zza
"inoremap  <C-cr>  <ESC>zza
" 插入模式下回到屏幕中央,可以使用<C-o>zz代替
"inoremap  <C-z>  <ESC>zza


"5 跳到行首和行尾, 因为i_ctrl-a 和 i_ctrl-e, 其实没有什么卵用,
" 所以还不如在插入模式下功能, 和bash等编辑模式中统一起来
" I进入到第一个非空白字符前面, A到行尾(没有验证是否是非空白字符)
inoremap  <C-a>   <ESC>I
inoremap  <C-e>   <ESC>A
"inoremap  <C-^>   <ESC><s-^>i
"inoremap  <C-^>   <ESC>I, I是插入到第一个飞空白字符,将从<s-^>中解放出来了
"inoremap  je   <ESC>$a

" Open new line in  'Insert Mode'
"inoremap <C-o> <ESC>o
" new line below
"inoremap jo <ESC>o
" new line above
"inoremap jO <ESC>O

" Write/Save file at Insert Mode
"inoremap <C-w> <ESC>:w<CR>a
inoremap  jw    <ESC>:w<CR>a

" Back word,注意: 因为是inoremap非递归映射<C-w>是vim底层的操作.
"inoremap <C-b> <C-w>
" <C-w>的习惯还是不能改: 无论是在插入模式, Ex模式, 还是bash中
" ctrl-w都是删除一个单词, 修改它是个不明智的选择, 所以还是用<C-b>去保存文件吧
" 不得已之举
inoremap <C-b> <ESC>:w<CR>a
"inoremap jb    <C-w>


" 6 快速在插入模式中粘贴特殊寄存器:非常好用
" 快速粘贴全局剪切板
inoremap  <Leader><Leader>p     <C-r>+
inoremap  <Leader><Leader>+     <C-r>+

" 快速粘贴全局star 剪切板
inoremap  <Leader><Leader>s     <C-r>*
inoremap  <Leader><Leader>*     <C-r>*

" 快速粘贴文件名
"inoremap  <Leader><Leader>f     <C-r>%  ",,f to search
inoremap  <Leader><Leader>%     <C-r>%

" toggle buffer
inoremap  <Leader><Leader>t     <C-r>#
inoremap  <Leader><Leader>#     <C-r>#


" 7 search
" 这里需要使用imap, 而不是inoremap. 因为后面有连续映射.
imap  <Leader><Leader>  <ESC><Plug>(easymotion-prefix)
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


" 8 画箭头
inoremap  <Leader>ar  ------>
inoremap  <Leader>ra  <------
