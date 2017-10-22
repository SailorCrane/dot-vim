" vim: set foldmethod=marker  foldlevel=0: vim modeline( set )

" this is a operator pending map setting and map file

" p stand for parenthese(括号)
" b means block
onoremap  (  i(
onoremap  )  a(
onoremap  p  i(
onoremap  P  a(

" 卵用不大
onoremap  b  /return<CR>

" <CR>是用来结束:normal命令, 处于visual状态
" 当前行下一个"(" 和前一个)
onoremap n( :<c-u>normal! f(vi(<CR>
onoremap N( :<c-u>normal! F(vi(<CR>

onoremap n) :<c-u>normal! f(va(<CR>
onoremap N) :<c-u>normal! F(va(<CR>

onoremap np :<c-u>normal! f(vi(<CR>
onoremap Np :<c-u>normal! F(vi(<CR>

onoremap nP :<c-u>normal! f(va(<CR>
onoremap NP :<c-u>normal! F(va(<CR>
