
" ========================= .c/.cpp) =========================

" Warning:
" 是触发 Filetype时被 autocmd.vim 中source的
" 只会触发一次: 所以此脚本中不可再 使用autocmd命令:否则不生效

"1
inoreabbrev <buffer> imn  int main(int argc, char **argv)<CR>{<CR>}<up><CR>

" 2 关于C/Cpp 头文件包含的映射
" 因为c-support的 \pg, \pl 就可以实现
" p:preprocess, g:global,  l:local
"inoremap chd< #include <><ESC>i
"inoremap chd> #include ""<ESC>i
inoremap [h   #include <><ESC>i
inoremap ]h   #include ""<ESC>i
