" vim: set fdm=marker fdl=0: vim modeline( set )

" 1: ================= edit Makefile / CMakeList.txt=======================
" 因为已经使用了模板文件, 所以这个MakeInput函数已经没用了.
"fun! MakeInput()
    " 这里的输入回车之后, 会自动输入一个tab, 因为makefile新行, 会自动添加tab, 所以不必再手动输入
    " 这里后期可能修改为单个函数: 追加一行文本等等, 添加回车等等
    "normal!  iCC = g++CFLAGS = -gmain : main.cpp$(CC) $(CFLAGS) \-o $@  \ $< \ -std=c++11 \-Wallrun:./main
"endfun

" 1-1
fun! EditMakefile()
"{{{
    " 为什么使用$类型变量的解释:
    " 只有$变量, 才可以和vim 命令一起使用,并作为vim命令的对象
    " 普通变量, 不可以和vim命令一起使用
    " let a = "./makefile"; edit a 就不行
    " 但是可以: let  $a = "./makefile", edit $a
    let $Umake = './Makefile'
    let $umake = './makefile'

    " 如果存在Makefile, 编辑Makefile
    if( filereadable($Umake) )
        edit  $Umake
        return
    endif

    " 如果存在makefile, 编辑makefile
    " edit 新文件, 会自动template插件, 会自动拉入Makefile模板
    if( filereadable($umake) )
        edit  $umake
        return
    endif

    " 如果都不存在, 默认编辑Makefile
    edit $Umake

    " 生成Makefile之后, 会自动添加一行新内容
    "call MakeInput()
"}}}
endfun


" 编辑CMakeLists.txt
fun! EditCMakeLists()
    let $CMake = './CMakeLists.txt'
    edit $CMake
endfun


" 3: =================open file=======================
" used in <Leader>eo, to open current file
fun! OpenFile()
"{{{
    let $fileType = &filetype    " set filetype?, &filtype是set 变量类型
    "echo  $fileType
    if  $fileType == 'markdown'
        InstantMarkdownPreview
    else
        " 函数可以执行:命令, 所以也可以加!执行外部命令
        " 注意, 不要在command后面加 "注释
        !gnome-open %
    endif
"}}}
endfun


" 4: =================显示当前文件名, 绝对路径=======================
fun! ShowBufName()
    echo expand("%:p")
endfun

" 定义一个自定义命令
command!  ShowBufName  call ShowBufName()


" 5: =================最大化当前窗口, 并显示文件名====================
fun! MaxCurrentWindow()
"{{{
    "resize 和 vertical resize命令如果不加尺寸参数, 参数就是widest 和
    "h :Ctrl-w__
    "h :Ctrl-w_|

    ":res[ize] [N]
    "CTRL-W CTRL-_					*CTRL-W_CTRL-_* *CTRL-W__*
    "CTRL-W _	Set current window height to N (default: highest possible).

    ":vertical res[ize] [N]			*:vertical-resize* *CTRL-W_bar*
    "CTRL-W |	Set current window width to N (default: widest possible).

    resize          " equal <C-w>_, set windows to hightest
    vertical resize " equal to <C-w>|
    call ShowBufName()
"}}}
endfun


" 6 toggle isk hypen
" 'isk' stand for 'iskeyword'
" &用于获取vim 'option' 变量
" 提供一个通用的vim函数, 内部用Python实现, 这样只用实现一次Python代码
fun! Toggle_isk(delimit, target)
"{{{
py3 <<EOF
import  vim
def toggle_isk(delimit, add_target):
#{{{     这里要用Python注释
    isk = vim.eval("&isk")

    keys = isk.split(delimit)

    # toggle
    if add_target not in keys:
        keys.append(add_target)
    else:
        keys.remove(add_target)

    new_isk = delimit.join(keys)
    vim.command("set  isk=%s" % new_isk)
    print("old isk: %s" % isk)
    print("new isk: %s" % new_isk)
#}}}     这里要用Python注释
delimit = vim.eval("a:delimit")     # python get vim argument
target  = vim.eval("a:target")      # python get vim argument
toggle_isk(delimit, target)

EOF
"}}}
endfun

fun! Toggle_isk_hypen()
    call Toggle_isk(",", "-")
endfun

fun! Toggle_isk_underline()
    call Toggle_isk(",", "_")
endfun

fun! Toggle_isk_dot()
    call Toggle_isk(",", ".")
endfun

fun! Toggle_isk_slash()
    call Toggle_isk(",", "/")
endfun

fun! Toggle_isk_colon()
    call Toggle_isk(",", ":")
endfun


"nnoremap  <Leader>em  :call <SID>EditMakefile()<CR>
