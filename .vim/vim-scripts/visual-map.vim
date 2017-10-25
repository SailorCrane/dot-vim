

"3: visual copy, 因为j按的最顺手,
" 并且ctrl在一般键盘caplock位置时,ctrl-j简直无敌组合"fast"

xnoremap  <Leader><Leader>p  "+p
xnoremap  <Leader><Leader>P  "+P


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
xnoremap  .   :normal .<CR>


"10: sort selected(visual) lines
" vim 自带:sort命令, 不需要 :!sort 外部命令
vnoremap  <Leader>so  :sort<CR>


"11: visual indent(also in visual), 可在visual模式下连续缩进
xnoremap  >  >gv
xnoremap  <  <gv

"vnoremap  <Leader>in  :let i=1|'<,'>g/^/ s//\=i . " "/ | let i+=2<CR>
"vnoremap  <Leader>in  :call InsertNum()<CR>
