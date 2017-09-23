
"1 to command line
vnoremap  ;    :
vnoremap  <CR> ;


"2 <Leader>f, <Leader>b to  page down up
vnoremap  <Leader>f   5<C-e>
vnoremap  <Leader>b   5<C-y>


"3: visual copy, 因为j按的最顺手,并且ctrl在一般键盘caplock位置时,ctrl-j简直无敌组合"fast"
vnoremap  <C-j>  "+y


"4: visual 模式下粘贴"+ 系统寄存器中内容, 和normal模式下统一起来
vnoremap  <Leader><Leader>p  "+p
vnoremap  <Leader><Leader>P  "+P


"5: blocl visual 模式下, 在列最前面添加空格
vnoremap  <Leader>i<Space>   I<Space><ESC>
vnoremap  <Leader>a<Space>   A<Space><ESC>
"vnoremap  <Leader>a<Space>   I<Space><ESC>


"6: visual align use Tabularize
"vnoremap  <Leader>h=   :'<,'>Tabularize  /=<CR>
" 这里不要再添加'<,'> 了, 如果visual模式按下":"
" vim会自动添加'<, '>
vnoremap  <Leader>h=   :Tabularize   /=<CR>
vnoremap  <Leader>h-   :Tabularize   /-<CR>
vnoremap  <Leader>h_   :Tabularize   /_<CR>
vnoremap  <Leader>h+   :Tabularize   /+<CR>

vnoremap  <Leader>h;   :Tabularize   /;<CR>
vnoremap  <Leader>h:   :Tabularize   /:<CR>

vnoremap  <Leader>h(   :Tabularize   /(<CR>
vnoremap  <Leader>h)   :Tabularize   /)<CR>

vnoremap  <Leader>h{   :Tabularize   /{<CR>
vnoremap  <Leader>h}   :Tabularize   /}<CR>

vnoremap  <Leader>h<   :Tabularize   /<<CR>
vnoremap  <Leader>h2<  :Tabularize   /<<<CR>
vnoremap  <Leader>h>   :Tabularize   /><CR>

vnoremap  <Leader>h,   :Tabularize   /,<CR>

" 注意这里的转义, 或者使用/\V.
vnoremap  <Leader>h.   :Tabularize  /\.<CR>
vnoremap  <Leader>h*   :Tabularize  /\*<CR>

vnoremap  <Leader>h\   :Tabularize  /\<CR>

vnoremap  <Leader>h&   :Tabularize  /&<CR>

" 对C/C++注释的左边和右边进行对齐.
vnoremap  <Leader>hl   :Tabularize  /\/\*<CR>
vnoremap  <Leader>hr   :Tabularize  /\*\/<CR>

"7: 对于已经含有/* */ 注释的行, 的注释.
" 主要用来进行多行注释, 在ctrl-v: block visual模式下
vnoremap  <Leader>lc   I//<ESC>


"8: 对选中的行, 插入顺序数字: "in" stand for "insert number"
"fun!  InsertNum()
    "let i = 1
    "'<,'>g/^/ s//\=i . " "/
    "let i += 2
"endfun


"9: visual map dot
vnoremap  .   :normal .<CR>


"10: sort selected(visual) lines
" vim 自带:sort命令, 不需要 :!sort 外部命令
vnoremap  ,so  :sort<CR>


"vnoremap  <Leader>in  :let i=1|'<,'>g/^/ s//\=i . " "/ | let i+=2<CR>
"vnoremap  <Leader>in  :call InsertNum()<CR>
