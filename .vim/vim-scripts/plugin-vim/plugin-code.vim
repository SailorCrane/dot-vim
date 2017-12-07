" vim: set foldmethod=marker  foldlevel=0: vim modeline( set )

" let g:all_languages = []
"{{{
let g:all_languages = [
    \ 'c',
    \ 'cpp',
    \ 'sh',
    \ 'zsh',
    \ 'python',
    \ 'vim',
    \
    \ 'scheme',
    \
    \ 'javascript',
    \ 'html',
    \ 'css',
    \
    \ 'ruby',
    \
    \ 'gitconfig',
    \ 'json',
    \ 'conf',
    \ 'nginx',
    \ 'tmux',
    \
    \ 'gdb',
    \ 'make',
    \ 'cmake',
    \ 'ld_version',
    \ 'dockerfile',
    \ ]
"}}}

" let g:all_lan_except_py = []
"{{{
let  g:all_lan_except_py=copy(g:all_languages)
let  s:py_idx=index(g:all_lan_except_py, 'python')
call remove(g:all_lan_except_py, s:py_idx)
"echo s:py_idx
"}}}

"3: nerdcommenter in scrooloose
Plug  'scrooloose/nerdcommenter', { 'for' : g:all_languages, 'on' : ['<Plug>NERDCommenterInvert',] }
" {{{

" <C-_> stand for <C-/>, 可以插入模式下使用: <C-v><C-/> 查看
" 这里只能使用nmap, 不能使用nnoremap
" 命令行模式下nmap  <cmd>,  带"*" 号的是nnoremap, 非"*" 是 nmap
"nmap <C-_>  <Plug>NERDCommenterInvert
" }}}

"3-2
Plug  'tpope/vim-commentary',     { 'for' : g:all_languages, 'on' : ['<Plug>CommentaryLine', '<Plug>Commentary',]}


"4-1: syntastic/ale
if v:version < 800
    Plug  'scrooloose/syntastic'  , {'for' : [ 'c', 'cpp', 'python', 'sh']}
    " {{{
    let g:syntax_checker = "syntastic"

    " loc for location: lnext, lpre
    let g:syntastic_always_populate_loc_list = 1
    "let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0

    let g:syntastic_python_checkers = ['pylint']
    "let g:syntastic_python_checkers = ['flake8']
    "let g:syntastic_python_pylint_args = "--no-docstring-rgx='.*'"
    "let g:syntastic_python_pylint_args = "--no-docstring-rgx='.*'  --ignore-imports='yes'  --indent-string='\t' -E "
    "let g:syntastic_python_pylint_args = " --indent-string='\t' --disable=E0401"
    "let g:syntastic_python_pylint_args = "-E"

    " 为了使syntastic 和 YCM一起工作, 将他们的 error 和 warning
    " symbol设置为不同标志
    let g:syntastic_error_symbol='✗'
    let g:syntastic_warning_symbol='⚠'
    let g:syntastic_enable_highlighting = 1
    let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'

    " =================== c/c++ =====================
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

else " v:version >= 800(vim8.0+)
    Plug  'w0rp/ale' ,  { 'for' : g:all_languages }
    "{{{
    let g:syntax_checker = "ale"

    " python use linter(pylint), not flake8(configed at ~/.pylintrc)
    let g:ale_linters = {
    \   'python': ['pylint'],
    \}

    let g:ale_sign_column_always = 1
    let g:ale_set_highlights = 0
    "自定义error和warning图标
    "let g:ale_sign_error = '✗'
    "let g:ale_sign_warning = '⚠'
    let g:ale_sign_error = '✗'
    let g:ale_sign_warning = '⚡'

    "在vim自带的状态栏中整合ale
    let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']

    "显示Linter名称,出错或警告等相关信息
    let g:ale_echo_msg_error_str = 'E'
    let g:ale_echo_msg_warning_str = 'W'
    let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

    "normal模式下，sp前往上一个错误或警告，sn前往下一个错误或警告
    nmap sp <Plug>(ale_previous_wrap)
    nmap sn <Plug>(ale_next_wrap)

    "<Leader>s触发/关闭语法检查
    nmap <Leader>ts :ALEToggle<CR>

    "<Leader>d查看错误或警告的详细信息
    nmap <Leader>dd :ALEDetail<CR>
    "}}}

endif


"5: YouCompleteMe
"Plug  'Valloric/YouCompleteMe' ,  { 'for' : g:all_languages }
" {{{
" 自动补全配置
"set completeopt=longest,menu    "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif  "离开插入模式后自动关闭预览窗口
"回车即选中当前项
"inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
"上下左右键的行为 会显示其他信息
"inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
"inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
"inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
"inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"


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

"nnoremap <Leader>yd :YcmCompleter GoToDefinitionElseDeclaration<CR> " 跳转到定义处
" }}}


"8: echofunc
"Plug  'mbbill/echofunc'


"12:  c-support用来支持c或者cpp的快捷键
Plug  'SailorCrane/c-support' , {'for' : [ 'c', 'cpp' ]}
" {{{
" c-support 就是 vim-scripts官网的c.vim, 二者是一个东西
" 修改了<c-j>

"12-1: 放在SailorCrane自己用户下
" c-support 就是 vim-scripts官网的c.vim, 二者是一个东西
"Plug  'SailorCrane/c.vim'
" }}}

"12-2: a.vim :switch between header and source file
Plug  'vim-scripts/a.vim'    , {'for' : [ 'c', 'cpp' ]}
"cnoreabbrev  a  A
" i stand for  include
nnoremap <C-t>  :A<CR>:call ShowBufName()<CR>


"14:  quick fix/locatioon window about
Plug  'romainl/vim-qf'


" 63
Plug  'thinca/vim-quickrun'


" 69 ultisnips +  vim-snippets
Plug  'SirVer/ultisnips'         , { 'for' : g:all_languages }
Plug  'SailorCrane/vim-snippets' , { 'for' : g:all_languages }
"{{{
"    ultisnips 是一个snippet引擎(类似于snipMate), vim-snippets是代码片段定义.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"

" trigger doen't support space
"let g:UltiSnipsExpandTrigger="<space>"
"let g:UltiSnipsJumpForwardTrigger="<space>"
"let g:UltiSnipsJumpBackwardTrigger="<S-space>"
"}}}

"28 SnipMate
"Plug  'garbas/vim-snipmate'
" the tow plugins below is necessary for snipmate
"Plug  'MarcWeber/vim-addon-mw-utils'
" snippets is  optional for snipmate
"Plug   'honza/vim-snippets'


" argwrap: awesome
Plug  'FooSoft/vim-argwrap'
nnoremap  <Leader>aw  :ArgWrap<CR>
inoremap  <Leader>aw  <ESC>:ArgWrap<CR>


"62 indent-guide
Plug  'nathanaelkane/vim-indent-guides'
"{{{
"if &expandtab   " 如果是tab, 就不要enable了, 因为会显示很宽
    "let g:indent_guides_enable_on_vim_startup = 1
"else    " use tab(noexpandtab)
    "let g:indent_guides_enable_on_vim_startup = 0
"endif

let g:indent_guides_enable_on_vim_startup = 0   " 不要启动, 手动启动

" 注意如果是tab缩进, size=1不管用, 会对整个tab显示indent(对于这里不要存在疑惑)
let g:indent_guides_guide_size=1
let g:indent_guides_start_level=2

nnoremap  <Leader>ti  :IndentGuidesToggle<CR>
nnoremap  <Leader>oi  :IndentGuidesEnable<CR>
"}}}


" cctree: 生成函数调用Tree
Plug  'hari-rangarajan/CCTree' , {'for' : [ 'c', 'cpp' ]}
let g:CCTreeKeyTraceForwardTree = '<C-\>>'
let g:CCTreeKeyToggleWindow = '<C-\>w'


" endwise from tpope
" 对于sh的支持一般: 输出if then 才会输出fi, 输入do回车输出done
" 可以由ultisnips.git代替
Plug  'tpope/vim-endwise' ,  { 'for' : g:all_languages }


" 不让sleuth影响到python的缩进
Plug  'tpope/vim-sleuth',  { 'for' : g:all_lan_except_py }
