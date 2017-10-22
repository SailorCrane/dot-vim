" vim: set foldmethod=marker  foldlevel=0: vim modeline( set )

" this is a operator pending map setting and map file

" p stand for parenthese(括号)
" b means block
onoremap  p  i(
onoremap  P  a(
onoremap  (  i(
onoremap  )  a(

" 卵用不大
onoremap  b  /return<CR>

" <CR>是用来结束:normal命令, 处于visual状态
onoremap n( :<c-u>normal! f(vi(<CR>
onoremap n) :<c-u>normal! F(vi(<CR>

