
"1  My abbreviation at insert mode
iabbrev q@  @qq.com
iabbrev @@  215379@qq.com


"2  my self  abbr
iabbrev jft just for test


"3 关于C/Cpp 头文件包含的映射
" 因为c-support的 \pg, \pl 就可以实现
" p:preprocess, g:global,  l:local
" Use map, not abbrev, because I want chd map more quick, not need <Space> to
" active it!
" and, I also can use <C-v> to disable this
" But, I can't disable abbreviation by <C-v>
inoremap chd< #include <><ESC>i
inoremap chd> #include ""<ESC>i

