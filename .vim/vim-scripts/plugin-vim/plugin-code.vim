" vim: set foldmethod=marker  foldlevel=0: vim modeline( set )

"3: nerdcommenter in scrooloose
Bundle "scrooloose/nerdcommenter.git"
" {{{

" <C-_> stand for <C-/>, 可以插入模式下使用: <C-v><C-/> 查看
" 这里只能使用nmap, 不能使用nnoremap
" 命令行模式下nmap  <cmd>,  带"*" 号的是nnoremap, 非"*" 是 nmap
"nmap <C-_>  <Plug>NERDCommenterInvert
" }}}


"4: syntastic in scrooloose
Bundle "scrooloose/syntastic.git"
" {{{
" 为了使syntastic 和 YCM一起工作, 将他们的 error 和 warning
" symbol设置为不同标志
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_enable_highlighting = 1
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'

"let g:syntastic_error_symbol='>>'
"let g:syntastic_warning_symbol='>'
let g:syntastic_check_on_open=1
" check_header 可以检测头文件语法错误
let g:syntastic_c_check_header=1
let g:syntastic_cpp_check_header = 1

"set the options of g++ to suport c++11. :

"let g:syntastic_cpp_compiler = 'clang++'
"let g:syntastic_cpp_compiler = 'gcc'
"let g:syntastic_cpp_compiler_options='-std=c++11 -stdlib=libc++' "这里加了之后, 语法检测就用不了了, 悲哀.

" 使语法检测, 支持c++11语法, 比如 auto iter = nodes.begin()
"let g:syntastic_cpp_compiler = 'g++'  "change the compiler to g++ to support c++11.
" }}}


"6: YouCompleteMe
"Bundle "Valloric/YouCompleteMe.git"
" {{{
" 自动补全配置
set completeopt=longest,menu    "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
autocmd InsertLeave * if pumvisible() == 0|pclose|endif  "离开插入模式后自动关闭预览窗口
"回车即选中当前项
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
"上下左右键的行为 会显示其他信息
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"


"不使用 ycm 的语法提示.
let  g:ycm_register_as_syntastic_checker = 0


"youcompleteme  默认tab  s-tab 和自动补全冲突
"let g:ycm_key_list_select_completion=['<c-n>']
let g:ycm_key_list_select_completion = ['<Down>']
"let g:ycm_key_list_previous_completion=['<c-p>']
let g:ycm_key_list_previous_completion = ['<Up>']

let g:ycm_confirm_extra_conf=1  " 打开加载.ycm_extra_conf.py提示


"let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py"
let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm"

let g:ycm_collect_identifiers_from_tags_files=1 " 开启 YCM 基于标签引擎
"let g:ycm_min_num_of_chars_for_completion=2        " 从第2个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=1     " 从第1个键入字符就开始罗列匹配项
let g:ycm_cache_omnifunc=0  " 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_seed_identifiers_with_syntax=1    " 语法关键字补全
"nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>   "force recomile with syntastic

"nnoremap <Leader>lo :lopen<CR> "open locationlist
"nnoremap <Leader>lc :lclose<CR>    "close locationlist
"inoremap <Leader><Leader> <C-x><C-o>

"在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0

nnoremap <Leader>yd :YcmCompleter GoToDefinitionElseDeclaration<CR> " 跳转到定义处
" }}}


"8: echofunc
Bundle "mbbill/echofunc.git"


"12:  c-support用来支持c或者cpp的快捷键
" {{{
" c-support 就是 vim-scripts官网的c.vim, 二者是一个东西
" 修改了<c-j>
Bundle "SailorCrane/c-support.git"

"12-1: 放在SailorCrane自己用户下
" c-support 就是 vim-scripts官网的c.vim, 二者是一个东西
"Bundle "SailorCrane/c.vim.git"
" }}}

"12-2: a.vim :switch between header and source file
Bundle "vim-scripts/a.vim.git"
"cnoreabbrev  a  A
" i stand for  include
nnoremap <C-t>  :A<CR>:call ShowBufName()<CR>


"14:  quick fix/locatioon window about
"Bundle "romainl/vim-qf.git"


"48 commentary from toppe: operator
Bundle  "tpope/vim-commentary.git"


" 63
Bundle "thinca/vim-quickrun.git"


" 69 ultisnips +  vim-snippets
"{{{
"    ultisnips 是一个snippet引擎(类似于snipMate), vim-snippets是代码片段定义.
Bundle "SirVer/ultisnips.git"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"

" trigger doen't support space
"let g:UltiSnipsExpandTrigger="<space>"
"let g:UltiSnipsJumpForwardTrigger="<space>"
"let g:UltiSnipsJumpBackwardTrigger="<S-space>"
Bundle "honza/vim-snippets.git"
"}}}

" argwrap
Bundle "FooSoft/vim-argwrap.git"
nnoremap  <Leader>aw  :ArgWrap<CR>
inoremap  <Leader>aw  <ESC>:ArgWrap<CR>


"62 indent-guide
Bundle "nathanaelkane/vim-indent-guides.git"
"{{{
if &expandtab   " 如果是tab, 就不要enable了, 因为会显示很宽
    let g:indent_guides_enable_on_vim_startup = 1
else    " use tab(noexpandtab)
    let g:indent_guides_enable_on_vim_startup = 0
endif

" 注意如果是tab缩进, size=1不管用, 会对整个tab显示indent(对于这里不要存在疑惑)
let g:indent_guides_guide_size=1
let g:indent_guides_start_level=2

nnoremap  <Leader>ti  :IndentGuidesToggle<CR>
nnoremap  <Leader>oi  :IndentGuidesEnable<CR>
"}}}


" cctree: 生成函数调用Tree
Bundle "hari-rangarajan/CCTree.git"

let g:CCTreeKeyTraceForwardTree = '<C-\>>'
let g:CCTreeKeyToggleWindow = '<C-\>w'


" endwise from tpope
Bundle "tpope/vim-endwise.git"
