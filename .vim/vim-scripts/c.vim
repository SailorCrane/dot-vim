
" ========================= NOTE: (for .c/.cpp) =========================
" WARNING:
" 在vim触发 Filetype时, 此文件被 autocmd.vim 中source
" 只会触发一次: 所以此脚本文件中不可再使用'autocmd'命令:否则不生效

" 1 main
inoreabbrev <buffer> imn  int main(int argc, char **argv)<CR>{<CR>}<up><CR>
inoreabbrev <buffer> exc  extern "C" <CR>{<CR>}<CR>

" 2 c/cpp include
inoremap <buffer> [h   #include <><ESC>i
inoremap <buffer> ]h   #include ""<ESC>i
nnoremap <buffer> [h   I#include <><ESC>i
nnoremap <buffer> ]h   I#include ""<ESC>i
" nnoremap <buffer> [h   i<c-u>#include <><ESC>i
" nnoremap <buffer> ]h   i<c-u>#include ""<ESC>i

" 3 Template
inoreabbrev <buffer> rth     <ESC>:read  $TEMPLATE_CPP/thread.cpp<CR>
inoreabbrev <buffer> rtime   <ESC>:read  $TEMPLATE_CPP/time.cpp<CR>

" 4 vim-scripts/a.vim
"cnoreabbrev  <buffer>  a  A
nnoremap     <buffer>  <C-t>  :A<CR>:call ShowBufName()<CR>

" 5 YouCompleteMe
" if exist('g:ycm_global_ycm_extra_conf')
nnoremap <buffer>  <leader>gg  :YcmCompleter  GoToDefinitionElseDeclaration<CR>
nnoremap <buffer>  <leader>gd  :YcmCompleter  GoToDefinition<CR>
nnoremap <buffer>  <leader>gl  :YcmCompleter  GoToDeclaration<CR>

" 6 main
" int  main( .*)
nnoremap  <buffer> gm  /\v(int)?\s+main\s*\(.*<CR>
