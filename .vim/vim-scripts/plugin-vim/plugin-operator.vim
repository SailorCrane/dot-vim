
" 1
Plug  'kana/vim-operator-user'

" 2 repeat,和surround同一个作者,主要用于 重复执行surround的操作
Plug  'tpope/vim-repeat'


" 3 vim-surround
Plug  'tpope/vim-surround'
"{{{
" ysiW": 给W添加"
" yss" : 给一行添加"
" cs"'
" ds"
" ysiw"

" custome
" echo char2nr("-") ------> 45
" echo char2nr("P") ------> 80, private
" echo char2nr("f") ------> 102, fold

" python private __name__
let g:surround_80 = "__\r__"

" 每次进入时, 设置b:surround_102.  Set_Fold_Surround
" vim fold "{{{  }}}"
"let g:surround_102 = '\" {{{\r\" }}}'
"}}}


" 4 ReplaceWithRegister: gr
Plug  'vim-scripts/ReplaceWithRegister'
" 'gr' operator(replace text with register)
" 几款类似插件
" Bundle https://github.com/romgrk/replace.vim
" Bundle https://github.com/vim-scripts/regreplop.vim
" Bundle https://github.com/kana/vim-operator-replace   "kana的应该质量可以吧?


" 5 vim-exchange : cx, cxc(cancel)
Plug  'tommcdo/vim-exchange'


" 6 grep
" Plug  'inside/vim-grep-operator'
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
Plug  'milsen/vim-operator-substitute'


" 8 sort motion(sort operator)
Plug  'christoomey/vim-sort-motion'


" 9 yank flashy
" Plug  'haya14busa/vim-operator-flashy'
" nmap y <Plug>(operator-flashy)
" let g:operator#flashy#flash_time = 200
" nnoremap  yy  yy


" 10 easy align operator
Plug  'junegunn/vim-easy-align'
nmap ga <Plug>(EasyAlign)
vmap ga <Plug>(EasyAlign)

