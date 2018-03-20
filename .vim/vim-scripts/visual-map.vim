
" xmap only for visual-mode, not for select mode(snippet mode)

"1: visual copy, 因为j按的最顺手,
" 并且ctrl在一般键盘caplock位置时,ctrl-j简直无敌组合"fast"
xnoremap  <C-j>  "+y

xnoremap  <Leader><Leader>p  "+p
xnoremap  <Leader><Leader>P  "+P


"2: visual align use Tabularize
"xnoremap  <Leader>h=   :'<,'>Tabularize  /=<CR>
" 这里不要再添加'<,'> 了, 如果visual模式按下":"
" vim会自动添加'<, '>
xnoremap  <Leader>h=   :Tabularize   /=<CR>
xnoremap  <Leader>h-   :Tabularize   /-<CR>
xnoremap  <Leader>h_   :Tabularize   /_<CR>
xnoremap  <Leader>h+   :Tabularize   /+<CR>

xnoremap  <Leader>h;   :Tabularize   /;<CR>
xnoremap  <Leader>h:   :Tabularize   /:<CR>

xnoremap  <Leader>h(   :Tabularize   /(<CR>
xnoremap  <Leader>h)   :Tabularize   /)<CR>

xnoremap  <Leader>h{   :Tabularize   /{<CR>
xnoremap  <Leader>h}   :Tabularize   /}<CR>

xnoremap  <Leader>h<   :Tabularize   /<<CR>
xnoremap  <Leader>h2<  :Tabularize   /<<<CR>
xnoremap  <Leader>h>   :Tabularize   /><CR>

xnoremap  <Leader>h,   :Tabularize   /,<CR>

" 注意这里的转义, 或者使用/\V.
xnoremap  <Leader>h.   :Tabularize  /\.<CR>
xnoremap  <Leader>h*   :Tabularize  /\*<CR>

xnoremap  <Leader>h\   :Tabularize  /\<CR>

xnoremap  <Leader>h&   :Tabularize  /&<CR>
xnoremap  <Leader>h#   :Tabularize  /#<CR>

" 对C/C++注释的左边和右边进行对齐.
xnoremap  <Leader>hl   :Tabularize  /\/\*<CR>
xnoremap  <Leader>hr   :Tabularize  /\*\/<CR>


" 对于已经含有/* */ 注释的行, 的注释.
" 主要用来进行多行注释, 在ctrl-v: block visual模式下
"xnoremap  <Leader>lc   I//<ESC>


"8: 对选中的行, 插入顺序数字: "in" stand for "insert number"
"fun!  InsertNum()
    "let i = 1
    "'<,'>g/^/ s//\=i . " "/
    "let i += 2
"endfun


"9 visual map dot
xnoremap  .   :normal .<CR>


"4 sort selected(visual) lines
" vim 自带:sort命令, 不需要 :!sort 外部命令
xnoremap  <Leader>so  :sort<CR>


"11: visual indent(also in visual), 可在visual模式下连续缩进
xnoremap  >  >gv
xnoremap  <  <gv

"xnoremap  <Leader>in  :let i=1|'<,'>g/^/ s//\=i . " "/ | let i+=2<CR>
"xnoremap  <Leader>in  :call InsertNum()<CR>

"12: substitute
"xnoremap <Leader>ss :s///<S-left>
xnoremap <Leader>ss :s///g<Left><Left>

