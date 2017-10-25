
augroup CraneGroup
    "0 clear autocmd in group
    au!

    "0 cursor(from vim galore)
    " 很喜欢cursorline)这个功能,我只想让这个效果出现在当前窗口,而且在插入模式中关闭这个效果:
    autocmd InsertLeave * set cursorline
    autocmd InsertEnter * set nocursorline
    "autocmd WinEnter * set cursorline
    "autocmd WinLeave * set nocursorline

    "1: quickfix
    " 打开QuickFix时, <CR> 恢复 <CR>功能.因为我将<CR>映射为了查找下一个
    au   FileType  qf  nnoremap <buffer>  <CR>  <CR>
    au   FileType  qf  setlocal nu rnu
    "au   FileType  qf   echo "MyFix"


    "2: help
    " 打开帮助文档时，自动显示行号
    au   FileType  help  setlocal nu rnu

    "2-2: man
    " 打开帮助文档时，自动显示行号
    au   FileType  man  setlocal nu rnu


    "3: Makefile
    " 设置所有的"make-"打头的文件名的文件类型都为make,注意vim使用"make"表示makefile文件类型,而不是"makefile"
    au   BufNewFile,BufRead   make-*  setlocal filetype=make


    "4-1: tagbar
    " 为什么我的tagbar,au设置打开行号不管用呢.虽然最后使用tagbar自带的g:tagbar_show_linenumbers=1,可以显示行号,但还是想明白"自己的au为什么针对tagbar
    " 不起作用呢
    au   FileType  tagbar  setlocal  nu
    au   FileType  tagbar  setlocal  rnu
    au   FileType  tagbar  nnoremap  <buffer> <Leader>n  <nop>
    au   FileType  tagbar  nnoremap  <buffer> <Leader>p  <nop>
    "注意:映射要使用 :<cmd><CR>的方式去映射,因为这里的命令是映射,而不是映射后的命令
    au   FileType  tagbar  nnoremap  <buffer> ?      :call <SNR>141_ToggleHelp()<CR>
    "au   BufNewFile,BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx    call tagbar#autoopen()
    "au   BufNewFile,BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx    syntax on


    "4-2: taglist
    au   FileType  taglist  setlocal  nu
    au   FileType  taglist  setlocal  rnu
    au   FileType  taglist  nnoremap  <buffer> <Leader>n  <nop>
    au   FileType  taglist  nnoremap  <buffer> <Leader>p  <nop>
    au   FileType  taglist  nnoremap  <buffer> ?          :call <SNR>57_Tlist_Window_Toggle_Help_Text()<CR>


    "5: undotree
    " 打开undotree 插件时<f2>， 设置行号: undotree的文件类型为undotree
    au   FileType  undotree setlocal nu
    au   FileType  undotree setlocal rnu
    au   FileType  undotree  nnoremap  <buffer> <Leader>n  <nop>
    au   FileType  undotree  nnoremap  <buffer> <Leader>p  <nop>


    "6: vundle FileType
    au   FileType  vundle setlocal nu
    au   FileType  vundle setlocal rnu
    au   FileType  vundle  nnoremap  <buffer> <Leader>n  <nop>
    au   FileType  vundle  nnoremap  <buffer> <Leader>p  <nop>


    "7: diff
    " undotree 插件下面的diff窗口类型为diff
    au   FileType  diff  setlocal nu rnu
    au   FileType  diff  nnoremap  <buffer> <Leader>n  <nop>
    au   FileType  diff  nnoremap  <buffer> <Leader>p  <nop>


    "8: minibufexpl  注意:映射一定要加上<buffer>,不然会影响全局映射
    "au   FileType  minibufexpl  nnoremap  <buffer> <Leader>n  <nop>
    "au   FileType  minibufexpl  nnoremap  <buffer> <Leader>p  <nop>
    "au   FileType  minibufexpl  nnoremap  <buffer> <C-^>      <nop>
    "au   FileType  minibufexpl  nmap      <buffer> <tab>      l


    "9: conque_term  注意:映射一定要加上<buffer>,不然会影响全局映射
    au   FileType  conque_term  nnoremap  <buffer>  <Leader>q  :bd<CR>
    " 这个被 InsertLeave, InsertEnter, set cursorline替代
    "au   FileType  conque_term  setlocal   nocursorline
    "au   FileType  conque_term  autocmd    WinEnter * normal i
    " use <buffer> 实现 logic-and 事件( FileType and WinEnter )
    au   FileType  conque_term  :au WinEnter <buffer> startinsert



    "10: nerdtree  注意:映射一定要加上<buffer>,不然会影响全局映射
    au   FileType  nerdtree  nnoremap  <buffer>  <Leader>n  <nop>
    au   FileType  nerdtree  nnoremap  <buffer>  <Leader>p  <nop>
    au   FileType  nerdtree  nnoremap  <buffer>  <Leader>q  :bd<CR>
    au   FileType  nerdtree  setlocal  nu  rnu
    "au   FileType  nerdtree  setlocal   nocursorline

    "11  中文空格:不要出现在编程语言中
    au   FileType  c,cpp,sh,python,vim  match  ErrorMsg  /"　"/

    "12 vim
    au   FileType  vim     nnoremap <buffer>  <F5>  :so %<CR>
    au   FileType  vim     setlocal  foldmethod=marker foldlevel=0

    "13 python
    au   FileType  python  source  $Vim_Scripts/python.vim

    "14 c/cpp
    au   FileType  c,cpp   source  $Vim_Scripts/c.vim
    au   FileType  cpp     source  $Vim_Scripts/cpp.vim


    "15 command-line(history) Event: 完美
    " 恢复<CR>原功能, 在这里是执行命令功能, 注意使用<buffer>映射
    "nnoremap <Leader><CR>    <CR>
    au   CmdWinEnter  * nnoremap <buffer> <CR>  <CR>
    " 现在有了 CmdWinEnter事件, 不需要如下映射
    "nnoremap <Leader><CR>    <CR>

augroup END "end of CraneGroup
