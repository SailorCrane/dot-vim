
" ========================= .c (contain .cpp) =========================

" Warning:
" 是触发 Filetype时被 autocmd.vim 中source的
" 只会触发一次: 所以此脚本中不可再 使用autocmd命令:否则不生效

"1
inoreabbrev <buffer> imn  int main(int argc, char **argv)<CR>{<CR>}<up><CR>
