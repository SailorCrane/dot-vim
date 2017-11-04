
" 1  motion user
call dein#add('kana/vim-textobj-user')

" 1-2 好像也是用来定义motion的
"call dein#add('vim-scripts/CountJump')


" 2  easy-motion
call dein#add('easymotion/vim-easymotion')
" {{{
let g:EasyMotion_smartcase = 1
"let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion

" 这里需要使用imap, 而不是inoremap. 因为后面有连续映射.
imap  <Leader><Leader>  <ESC><Plug>(easymotion-prefix)

" move to anything(global)
"map  <Leader><Leader>f <Plug>(easymotion-bd-f)
"nmap <Leader><Leader>f <Plug>(easymotion-overwin-f)

map  <Leader>f <Plug>(easymotion-bd-f)
nmap <leader>f <plug>(easymotion-overwin-f)

" Move to line
map  <Leader><Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader><Leader>l <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader><Leader>w <Plug>(easymotion-bd-w)
nmap  <Leader><Leader>w <Plug>(easymotion-overwin-w)

"map <Leader><leader>h <Plug>(easymotion-linebackward)
"map <Leader><leader>l <Plug>(easymotion-lineforward)
"map <Leader><Leader>j <Plug>(easymotion-j)
"map <Leader><Leader>k <Plug>(easymotion-k)
" 重复上一次操作, 类似repeat插件, 很强大
"map <Leader><leader>. <Plug>(easymotion-repeat)

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
" }}}


" 3 object/target plugins
" extend vim target
call dein#add('wellle/targets.vim')
let g:targets_pairs = '()b {}B [] <>'


" 4 text-object-entire: file object
call dein#add('kana/vim-textobj-entire')
call dein#add('kana/vim-textobj-line')
" 和column object冲突
"call dein#add('glts/vim-textobj-comment')

" `` 印刷quote
call dein#add('reedes/vim-textobj-quote')
call dein#add('coderifous/textobj-word-column.vim')
" iS, aS
call dein#add('saihoooooooo/vim-textobj-space')
" iv, av
call dein#add('Julian/vim-textobj-variable-segment')
" ia, aa, iA, aA
call dein#add('b4winckler/vim-angry')


" 6 indent object
call dein#add('michaeljsmith/vim-indent-object')
