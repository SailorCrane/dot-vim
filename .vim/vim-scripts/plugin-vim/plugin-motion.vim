
" motion/pending map

" 1  motion user
Plug  'kana/vim-textobj-user'

" 1-2 好像也是用来定义motion的
"Plug  'vim-scripts/CountJump'


" 2  easy-motion
Plug  'easymotion/vim-easymotion'
" {{{
let g:EasyMotion_smartcase = 1
"let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion

" 这里需要使用imap, 而不是inoremap. 因为后面有连续映射.
"imap  <Leader><Leader>  <ESC><Plug>(easymotion-prefix)
imap  <Leader><Leader>f  <ESC><Plug>(easymotion-overwin-f)

" move to any char
xmap <Leader>f <Plug>(easymotion-bd-f)
" <plug>(easymotion-overwin-f)在macvim下不能正常工作, <Plug>(easymotion-bd-f)可以
" nmap <leader>f <Plug>(easymotion-overwin-f)
nmap <Leader>f <Plug>(easymotion-bd-f)

" Move to line
xmap <Leader><Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader><Leader>l <Plug>(easymotion-overwin-line)

" Move to word
xmap  <Leader><Leader>w <Plug>(easymotion-bd-w)
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
Plug  'wellle/targets.vim'
let g:targets_pairs = '()b {}B [] <>'


" 4 text-object-entire: file object
Plug  'kana/vim-textobj-entire'
Plug  'kana/vim-textobj-line'
" 和column object冲突
"Plug  'glts/vim-textobj-comment'

" `` 印刷quote
Plug  'reedes/vim-textobj-quote'
Plug  'coderifous/textobj-word-column.vim'
" iS, aS
Plug  'saihoooooooo/vim-textobj-space'
" iv, av
Plug  'Julian/vim-textobj-variable-segment'
" ia, aa, iA, aA
Plug  'b4winckler/vim-angry'


" 6 indent object
Plug  'michaeljsmith/vim-indent-object'


" 7  lastpat(awesome)
Plug   'SailorCrane/vim-textobj-lastpat'
"{{{
" i/ 和 gn 区别(一个是选中search, 一个是选中visual)
" 而lastpat是当前搜索内容, di/可以删除搜索内容.(非常有用, 尤其是搜索非常复杂时)

" 修改源码实现 lastpat插件(SailorCrane), 因为 'i/'和'a/' 还要用在路径选取中
" omap  an  <Plug>(textobj-lastpat-n)
" omap  in  <Plug>(textobj-lastpat-n)
" a?  <Plug>(textobj-lastpat-N)
" i?  <Plug>(textobj-lastpat-N)
"}}}
