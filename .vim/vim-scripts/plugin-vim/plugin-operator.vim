
" 1
call dein#add('kana/vim-operator-user')

" 2 repeat,和surround同一个作者,主要用于 重复执行surround的操作
call dein#add('tpope/vim-repeat')


" 3 vim-surround
call dein#add('tpope/vim-surround')
" ysiW": 给W添加"
" yss" : 给一行添加"
" cs"'
" ds"
" ysiw"


" 4 ReplaceWithRegister: gr
call dein#add('vim-scripts/ReplaceWithRegister')
" 'gr' operator(replace text with register)
" 几款类似插件
" Bundle https://github.com/romgrk/replace.vim
" Bundle https://github.com/vim-scripts/regreplop.vim
" Bundle https://github.com/kana/vim-operator-replace   "kana的应该质量可以吧?


" 5 vim-exchange : cx, cxc(cancel)
call dein#add('tommcdo/vim-exchange')


" 6 grep
" call dein#add('inside/vim-grep-operator')
" vim grep operator(support combined with other motion)
" 已经有了EasyGrep, 不再需要这个插件了. 而且不太好使(几乎没作用, " 有作用的话很好用)
"nmap <leader>g <Plug>GrepOperatorOnCurrentDirectory
"vmap <leader>g <Plug>GrepOperatorOnCurrentDirectory
"nmap <leader><leader>g <Plug>GrepOperatorWithFilenamePrompt
"vmap <leader><leader>g <Plug>GrepOperatorWithFilenamePrompt
"let &grepprg='git grep -n -R $*'
"set grepprg=git\ grep\ -n\ -R\ $*
"let g:grep_operator = 'Ack'


" 7 substitute operator(也是鸡肋)
call dein#add('milsen/vim-operator-substitute')


" 8 sort motion(sort operator)
call dein#add('christoomey/vim-sort-motion')


" 9 yank flashy
call dein#add('haya14busa/vim-operator-flashy')
nmap y <Plug>(operator-flashy)
let g:operator#flashy#flash_time = 200
nnoremap  yy  yy


" 10 easy align operator
call dein#add('junegunn/vim-easy-align')
nmap ga <Plug>(EasyAlign)
vmap ga <Plug>(EasyAlign)

