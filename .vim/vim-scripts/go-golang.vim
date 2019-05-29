
nnoremap <buffer>  <F5>          :!clear ; go run  %<CR>
nnoremap <buffer>  <F6>          :!clear ; go fmt  %<CR>

" locate to "type.* or func.* or var", var前面没有空格: 目的是为定位全局变量
"nnoremap <buffer>  [[  ?^\v\s*\zs(func\|type)\ze\s*<CR>
"nnoremap <buffer>  ]]  /^\v\s*\zs(func\|type)\ze\s*<CR>

" 因为有了vim-go插件, 所以禁用
" nnoremap <buffer>  [[  ?^\v(\s*(func\|type)\|var)\s+<CR>
" nnoremap <buffer>  ]]  /^\v(\s*(func\|type)\|var)\s+<CR>

"注意"|"在vim中
nnoremap <buffer> gd  /\v\s*(func\|type\|var)\s+.*\zs.*\ze\(?.*<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>
"nnoremap <buffer> gd  /\v\s*\zs(func\|type\|var)\ze\s+.*.*<LEFT><LEFT>
"nnoremap <buffer> <c-w>T  <c-w><c-]>T<c-]>
"nnoremap <buffer> <c-w>T  <c-w><c-]>T<c-]>
"nnoremap <buffer>  <Leader>]]  /^\v\s*\zs(def\|class)\ze\s*<CR>
