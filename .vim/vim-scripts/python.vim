
" ========================= python =========================

" Warning:
" 是触发 Filetype时被 autocmd.vim 中source的
" 只会触发一次: 所以此脚本中不可再 使用autocmd命令:否则不生效

" 0: tab setting ========================================
source  $Vim_Scripts/python-tab-local.vim


" 1: setting
setlocal foldmethod=indent   " python use indent to fold
setlocal foldlevel=99


" 2: map jump
"{{{
" "[[" and "]]" search for function and class
" 加<Leader>是因为 "[[" and "]]"被 vim/plugin/python.vim 占用了
" \zs零宽 \ze
" 空白打头 + def + 空白结尾
" /^\v\s*\zs(def\|class)\ze\s*<CR>
" 因为使用"/" and "?" 搜索的, 之后就可以使用n/N 跳转
" next  "class" or "def"
"
" 下面查找class, def 的功能在 自带
" /usr/share/vim/vim74/ftplugin/python.vim
" python.vim 插件中已经存在
"
"nnoremap <buffer>  <Leader>]]  /^\v\s*\zs(def\|class)\ze\s*<CR>
"nnoremap <buffer>  <Leader>[[  ?^\v\s*\zs(def\|class)\ze\s*<CR>
"nnoremap <buffer>  <Leader>[]  ?^\v\s*\zs(def\|class)\ze\s*<CR>k
"nnoremap <buffer>  <Leader>][  /^\v\s*\zs(def\|class)\ze\s*<CR>k

"" ,]c next "class"
"nnoremap <buffer>  <Leader>]c  /^\v\s*\zsclass\ze\s*<CR>
"" ,]d next "def"
"nnoremap <buffer>  <Leader>]d  /^\v\s*\zsdef\ze\s*<CR>

"" ,[c pre "class"
"nnoremap <buffer>  <Leader>[c  ?^\v\s*\zsclass\ze\s*<CR>
"" ,]d pre "def"
"nnoremap <buffer>  <Leader>[d  ?^\v\s*\zsdef\ze\s*<CR>
"}}}

" 3:  <F5> run current file
"{{{
" 正统留给<f5>, python3当然才是正统
nnoremap <buffer>  <F5>          :!clear && python3  %<CR>
nnoremap <buffer>  <Leader><F5>  :!clear && python2  %<CR>

" c stand for non "clear"
"nnoremap c<F5>         :!python3  %<CR>
"nnoremap c<F5>         :!python3  %<CR>
"}}}

" 4: <C-w>a  dont' effect  NerdTree width, only max height
"{{{
" NerdTree  : set   winfixwidth
nnoremap <buffer>  <C-w>a   <C-w>_<CR>
"}}}

" 5: template
"inoreabbrev <buffer> rstu  <ESC>:read $TEMPLATE_PYTHON/Stu.py<CR>
inoreabbrev <buffer> rcom  <ESC>:read $TEMPLATE_PYTHON/common.py<CR>
inoreabbrev <buffer> rtest <ESC>:read $TEMPLATE_PYTHON/test_case.py<CR>
inoreabbrev <buffer> rtime <ESC>:read $TEMPLATE_PYTHON/time_snippet.py<CR>

" 6: <Leader>ci <leader>cs
vnoremap    <buffer> ,cs   do"""<CR>"""<ESC>kp

" 7: disable preview for python complete(jedi)
setlocal  completeopt-=preview

" 8: jedi setting(deprecated, all jedi config can be setting by let g:jedi# = )
" nnoremap <buffer> <Leader>gg :call jedi#goto_assignments()<CR>
" nnoremap <buffer> <Leader>gd :call jedi#goto()<CR>
" \ 'goto_command': "'<leader>d'",
" \ 'goto_assignments_command': "'<leader>g'",
" \ 'goto_definitions_command': "''",
