
augroup CraneGroup
    "0 clear autocmd in group
    au!

    "0 cursor(from vim galore)
    " 很喜欢cursorline)这个功能,我只想让这个效果出现在当前窗口,而且在插入模式中关闭这个效果:
    au InsertLeave * setlocal cursorline
    au InsertEnter * setlocal nocursorline
    "au WinEnter * setlocal cursorline
    "au WinLeave * setlocal nocursorline

    "0-1 let b:surround_ of surround plugin
    au   BufNewFile,BufRead   *  call Set_Fold_Surround()

    "0-2 根据文件类型设置dict
    au   BufNewFile,BufRead   *  call Set_Dict_List()

    "0-2 进入窗口时显示buff file name
    "au WinEnter * file
    "au TabEnter * file
    "au WinEnter * call  ShowBufName()
    "au WinEnter * exec "normal  <C-g>"
    "h ctrl-g
    "file命令即normal下的<C-g>, 类似于自己写的ShowBufName()函数


    "1: quickfix
    " 打开QuickFix时, <CR> 恢复 <CR>功能.因为我将<CR>映射为了查找下一个
    au   FileType  qf  nnoremap <buffer>  <CR>  <CR>
    au   FileType  qf  setlocal nu rnu

    " same with in ack quickfix('t' map)
    au   FileType  qf  nnoremap  <silent> <buffer> tt <C-W><CR><C-W>T
    "au   FileType  qf   echo "MyFix"


    "2: help
    " 打开帮助文档时，自动显示行号
    au   FileType  help  setlocal nu rnu

    "2-2: man
    " 打开帮助文档时，自动显示行号
    au   FileType  man  setlocal nu rnu
    au   FileType  man  nnoremap <buffer>  ]m  :call Next_para()<CR>
    au   FileType  man  nnoremap <buffer>  [m  :call Last_para()<CR>
    au   FileType  man  nnoremap <buffer>  ]]  :call Next_para()<CR>:call Next_para()<CR>
    au   FileType  man  nnoremap <buffer>  [[  :call Last_para()<CR>:call Last_para()<CR>


    "3: Makefile
    " 设置所有的"make-"打头的文件名的文件类型都为make,注意vim使用"make"表示makefile文件类型,而不是"makefile"
    au   BufNewFile,BufRead   make-*  setlocal filetype=make
    au   FileType  make    nnoremap <buffer>  <F5>          :!clear && make -f %<CR>
    " au   FileType  make    nnoremap <buffer>  <Leader><F5>  :!clear && make -B -f %<CR>
    au   FileType  make    nnoremap <buffer>  <F6>  :!clear && make -B -f %<CR>


    "4-1: tagbar
    " 为什么我的tagbar,au设置打开行号不管用呢.虽然最后使用tagbar自带的g:tagbar_show_linenumbers=1,可以显示行号,但还是想明白"自己的au为什么针对tagbar
    " 不起作用呢
    au   FileType  tagbar  setlocal  nu
    au   FileType  tagbar  setlocal  rnu
    "注意:映射要使用 :<cmd><CR>的方式去映射,因为这里的命令是映射,而不是映射后的命令
    au   FileType  tagbar  nnoremap  <buffer> ?      :call <SNR>141_ToggleHelp()<CR>
    "au   BufNewFile,BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx    call tagbar#autoopen()
    "au   BufNewFile,BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx    syntax on


    "4-2: taglist
    au   FileType  taglist  setlocal  nu
    au   FileType  taglist  setlocal  rnu
    au   FileType  taglist  nnoremap  <buffer> ?          :call <SNR>57_Tlist_Window_Toggle_Help_Text()<CR>


    "5: undotree
    " 打开undotree 插件时<f2>， 设置行号: undotree的文件类型为undotree
    au   FileType  undotree setlocal nu
    au   FileType  undotree setlocal rnu


    "6: vundle FileType
    au   FileType  vundle setlocal nu
    au   FileType  vundle setlocal rnu


    "7: diff
    " undotree 插件下面的diff窗口类型为diff
    au   FileType  diff  setlocal nu rnu


    "8: minibufexpl  注意:映射一定要加上<buffer>,不然会影响全局映射
    "au   FileType  minibufexpl  nnoremap  <buffer> <C-^>      <nop>
    "au   FileType  minibufexpl  nmap      <buffer> <tab>      l


    "9: conque_term  注意:映射一定要加上<buffer>,不然会影响全局映射
    au   FileType  conque_term  nnoremap  <buffer>  <Leader>q  :bd<CR>
    au   FileType  conque_term  inoremap  <buffer>  <C-h>      <Esc><C-w><C-h>

    " conque_term 已经映射了<c-h>
    "au   FileType  conque_term  inoremap  <buffer> <unique>  <C-h>      <ESC><C-w><c-h>

    " 这个被 InsertLeave, InsertEnter, setlocal cursorline替代
    "au   FileType  conque_term  setlocal   nocursorline
    "au   FileType  conque_term  autocmd    WinEnter * normal i
    " use <buffer> 实现 logic-and 事件( FileType and WinEnter )
    au   FileType  conque_term  :au WinEnter <buffer> startinsert


    "10: nerdtree  注意:映射一定要加上<buffer>,不然会影响全局映射
    au   FileType  nerdtree  nnoremap  <buffer>  <Leader>q  :bd<CR>
    au   FileType  nerdtree  setlocal  nu  rnu

    au   FileType  nerdtree  nnoremap  <buffer> b   :Bookmark<CR>
    au   FileType  nerdtree  nnoremap  <buffer> db  :ClearBookmarks<CR>
    au   FileType  nerdtree  nnoremap  <silent> <buffer> dd  :call nerdtree#ui_glue#invokeKeyMap("D")<CR>y<CR>
    au   FileType  nerdtree  nnoremap  <silent> <buffer> gb  gg/Bookmarks<CR>j
    au   FileType  nerdtree  nm        <silent> <buffer> <Space>   o

    au   FileType  nerdtree  nnoremap  <silent> <buffer> tt :call nerdtree#ui_glue#invokeKeyMap("t")<CR>

    au   FileType  nerdtree  nnoremap  <silent> <buffer> <F5> :call nerdtree#ui_glue#invokeKeyMap("r")<CR>
    au   FileType  nerdtree  nnoremap  <silent> <buffer> <F6> :call nerdtree#ui_glue#invokeKeyMap("R")<CR>
    "au   FileType  nerdtree  setlocal   nocursorline


    "11  中文空格:不要出现在编程语言中
    au   FileType  c,cpp,sh,python,vim  match  ErrorMsg  /"　"/

    "12 vim
    " au   FileType  vim     nnoremap <buffer>  <F5>  :so %<CR>
    " <F5> 重新加载vim脚本配置
    au   FileType  vim     nnoremap <buffer>  <F5>  :source $MYVIMRC<CR>:let &filetype=&filetype<CR>
    au   FileType  vim     setlocal  foldmethod=marker foldlevel=0
    "au   FileType  vim     syn match vimSegment '=\{3,}.*=\{3,}'
    "au   FileType  vim     syn match vimSegment '====' contained
    "au   FileType  vim     hi link vimSegment Keyword
    "au   FileType  vim     syn match ngxVariable '\$\(\w\+\|{\w\+}\)'


    "13 python and go
    au   FileType  python  source  $Vim_Scripts/python.vim
    au   FileType  go      source  $Vim_Scripts/go-golang.vim

    "14 c/cpp
    au   FileType  c     setlocal commentstring=//\ %s
    " NOTE: <F5> 编译, <F6>执行
    au   FileType  c     nnoremap <buffer>  <F5>  :execute "!clear ; gcc % -o ".expand("%:p:r")<CR>
    au   FileType  c     nnoremap <buffer>  <F6>  :execute "!clear ; gcc % -o ".expand("%:p:r")."&& ".expand("%:p:r")<CR>
    au   FileType  cpp   nnoremap <buffer>  <F5>  :execute "!clear ; g++ % -o ".expand("%:p:r")<CR>
    au   FileType  cpp   nnoremap <buffer>  <F6>  :execute "!clear ; g++ % -o ".expand("%:p:r")."&& ".expand("%:p:r")<CR>
    au   FileType  c,cpp source  $Vim_Scripts/c.vim
    au   FileType  cpp   source  $Vim_Scripts/cpp.vim

    "14-2 java
    " <F5> 编译 + 执行
    " NOTE: expand("%:t:r") 只包含文件名(没有目录名和后缀), 因为java需要这样运行class
    au   FileType  java     nnoremap <buffer>  <F5>  :execute "!clear; javac % && java ".expand("%:t:r")<CR>
    au   FileType  scala     nnoremap <buffer>  <F5>  :execute "!clear; scala %" <CR>

    "15 sh
    " 执行当前文件
    au   FileType  sh      nnoremap <buffer>  <F5>  :!clear && $(readlink -f %)<CR>


    "15 command-line(history) Event: 完美
    " 恢复<CR>原功能, 在这里是执行命令功能, 注意使用<buffer>映射
    "nnoremap <Leader><CR>    <CR>
    au   CmdWinEnter  * nnoremap <buffer> <CR>  <CR>
    " 现在有了 CmdWinEnter事件, 不需要如下映射
    "nnoremap <Leader><CR>    <CR>

    "16 scratch: 没有起作用...
    au  FileType  scratch  setlocal rnu nu


    "17-1: fixed commentstring: config, ini
    au  FileType  gitconfig  setlocal cms=#\ %s
    au  FileType  cmake      setlocal commentstring=#\ %s
    au  FileType  text       setlocal cms=#\ %s
    au  FileType  dosini  setlocal cms=#\ %s


    au  FileType  terminal  nnoremap  <buffer> <Leader>q   :q!<CR>
    au  FileType  terminal  nnoremap  <buffer> <Leader>aq  :q!<CR>:qa<CR>
    au  FileType  terminal  nnoremap  <buffer> a          a
    au  FileType  terminal  nnoremap  <buffer> i          i
    au  FileType  terminal  nnoremap  <buffer> o          i<CR>
    au  FileType  terminal  nnoremap  <buffer> O          i<CR>
    au  FileType  terminal  nnoremap  <buffer> <C-d>      :q!<CR>
    au  FileType  terminal  :au WinEnter <buffer> normal  a
    " au  FileType  terminal  inoremap  <buffer> jk     <C-\><C-n>
    " au  FileType  terminal  inoremap  <buffer> <C-d>  <C-\><C-n>
    " au  FileType  terminal  inoremap  <buffer> <C-c>  <C-\><C-n>:q!<CR>

    " 18 dosbatch
    " used by 'gcc' comment plugin
    au  FileType  dosbatch  let &commentstring=':: %s'
    au  FileType  dosbatch  set ff=dos

    " 18 dos .asm
    " used by 'gcc' comment plugin
    au  FileType  asm  setlocal commentstring=;\ %s
    au  FileType  asm  nnoremap <buffer>  <F5>  :!clear; nasm %<CR>
    " expand("%:p:h")是路径名
    " expand("%:p:r")不带后缀的文件路径
    " <F6>用来反汇编当前文件产生的可执行文件
    au  FileType  asm  nnoremap <buffer>  <F6>  :execute "!clear ; nasm % && ndisasm  ".expand("%:p:r")<CR>

" command! -nargs=1 ChgExt execute "saveas ".expand("%:p:r").<q-args>


    " 19 dockerfile
    au BufNewFile dockerfile  silent 0 read  $TEMPLATE/dockerfile/dockerfile-template
    au  FileType  dockerfile  setlocal commentstring=#\ %s


    " 20 sql file
    au  FileType  sql  let &commentstring='-- %s'

    " 21 html
    " gnome-open
    " exo-open
    " xdg-open
    " gvfs-open
    " kde-open
    au   FileType  html    nnoremap <buffer>  <F5>          :!xdg-open %<CR>
    au   FileType  html    nnoremap <buffer>  <F6>          :!google-chrome-stable  %<CR>
    au   FileType  html    nnoremap <buffer>  <F7>          :!firefox  %<CR>
    "au   FileType  html    nnoremap <buffer>  <F5>          :!gnome-open %<CR>

    " 22-1 tex/latex
    au   FileType  tex    nnoremap <buffer>  <F5>          :LLPStartPreview<CR>

    " 22-2 markdown(不再需要各种preview插件)
    au   FileType  markdown    nnoremap <buffer>  <F5>     :!google-chrome-stable %:p<CR>'



    " END: highlight for coding (TODO|OBSOLETE|HINT|NOTE|ATTENTION|QUE|TEST|WARNING|REFACTOR|OPTIMIZE|FIXME|XXX)
    au Syntax * syn match MyTodo /\v<(TODO|OBSOLETE|HINT|NOTE|ATTENTION|QUE|WARNING|TEST|REFACTOR|OPTIMIZE|FIXME|XXX)/ containedin=.*Comment,vimCommentTitle

augroup END "end of CraneGroup

" highlight (TODO|OBSOLETE|HINT|NOTE|ATTENTION|QUE|TEST|WARNING|REFACTOR|OPTIMIZE|FIXME|XXX)
hi def link MyTodo Todo
