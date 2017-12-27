
" ========================= .cpp(not .c) =========================

" Warning:
" 是触发 Filetype时被 autocmd.vim 中source的
" 只会触发一次: 所以此脚本中不可再 使用autocmd命令:否则不生效

"1
inoreabbrev <buffer> sct  std::cout <<
inoreabbrev <buffer> scr  std::cerr <<

" sel 缩写为"std::endl;" 的话, 后面的";"没有用. 因为缩写,
" 必须再输入非单词符号结束.那每次必须手动输入分好使得sel缩写确认.
inoreabbrev <buffer> sel  std::endl

" rstu stand for read Stu.hpp
inoreabbrev <buffer> rstu  <ESC>:read  $TEMPLATE_CPP/Stu.hpp<CR>
inoreabbrev <buffer> rcom  <ESC>:read  $TEMPLATE_CPP/common.cpp<CR>
inoreabbrev <buffer> rtest <ESC>:read  $TEMPLATE_CPP/test_case.cpp<CR>
