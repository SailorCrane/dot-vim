
" ========================= python =========================

" Warning:
" 是触发 Filetype时被 autocmd.vim 中source的
" 只会触发一次: 所以此脚本中不可再 使用autocmd命令:否则不生效

" 0: tab setting ========================================
source  $Vim_Scripts/python-tab.vim


" 1: setting ========================================
setlocal foldmethod=indent   " python use indent to fold
setlocal foldlevel=99


" 2: map jump ========================================
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


" 3:  <F5> run current file
nnoremap <F5>          :!python  %<CR>
nnoremap <Leader><F5>  :!python3 %<CR>


" 4: <C-w>a dont'  effect  NerdTree width, only max height
" NerdTree  : set   winfixwidth
nnoremap <C-w>a   <C-w>_<CR>


" 5: template
inoreabbrev rstu <ESC>:read $TEMPLATE_PYTHON/Stu.py<CR>
inoreabbrev rcom <ESC>:read $TEMPLATE_PYTHON/common.py<CR>


" 6: <Leader>ci <leader>cs
vnoremap    ,cs   do"""<CR>"""<ESC>kp
