" vim: set foldmethod=marker  foldlevel=2: vim modeline( set )


"54 python 相关
Plug   'vim-scripts/pyflakes'  ,       { 'for' : 'python'}
Plug   'vim-scripts/pydoc.vim' ,       { 'for' : 'python'}
Plug   'vim-scripts/indentpython.vim', { 'for' : 'python'}
Plug   'SailorCrane/python.vim',       { 'for' : 'python'}
Plug   'hdima/python-syntax',          { 'for' : 'python'}


" python 的一款补全插件
Plug   'davidhalter/jedi-vim',         { 'for' : 'python'}
"{{{
let g:jedi#smart_auto_mappings      = 0
let g:jedi#goto_assignments_command = "<leader>gg"
let g:jedi#goto_command             = "<leader>gd"
"nnoremap <buffer> ,gg :call jedi#goto_assignments()<CR>

" if g:jedi#smart_auto_mappings == 1
"     inoremap <silent> <buffer> <space> <C-R>=jedi#smart_auto_mappings()<CR>
" end

" let g:jedi#goto_assignments_command = 0
" echo 'in python-plugin vim'
"nnoremap <buffer> <Ledaer>ga  :call jedi#goto_assignments()<CR>
" if len(g:jedi#goto_assignments_command)
"     execute 'nnoremap <buffer> '.g:jedi#goto_assignments_command.' :call jedi#goto_assignments()<CR>'
" endif
"}}}


Plug  'python-rope/ropevim',           { 'for' : 'python'}

" % matchit
Plug  'voithos/vim-python-matchit',    { 'for' : 'python'}

" 暂不启用
"Plug  'python-mode/python-mode'
