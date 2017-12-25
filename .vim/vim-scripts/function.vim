" vim: set fdm=marker fdl=0: vim modeline( set )

" 1-0: edit Makefile/CMakeList.txt
"{{{
" 因为已经使用了模板文件, 所以这个MakeInput函数已经没用了.
"fun! MakeInput()
    " 这里的输入回车之后, 会自动输入一个tab, 因为makefile新行, 会自动添加tab, 所以不必再手动输入
    " 这里后期可能修改为单个函数: 追加一行文本等等, 添加回车等等
    "normal!  iCC = g++CFLAGS = -gmain : main.cpp$(CC) $(CFLAGS) \-o $@  \ $< \ -std=c++11 \-Wallrun:./main
"endfun
"}}}

" 1-1 编辑Makefile
fun! EditMakefile()
"{{{
    " 为什么使用$类型变量的解释:
    " 只有$变量, 才可以和vim 命令一起使用,并作为vim命令的对象
    " 普通变量, 不可以和vim命令一起使用
    " let a = "./makefile"; edit a 就不行
    " 但是可以: let  $a = "./makefile", edit $a
    let $Splitright = &splitright
    set splitright

    let $Umake = './Makefile'
    let $umake = './makefile'

    " 如果存在Makefile, 编辑Makefile
    if( filereadable($Umake) )
        "edit  $Umake
        vsplit  $umake
        return
    endif

    " 如果存在makefile, 编辑makefile
    " edit 新文件, 会自动template插件, 会自动拉入Makefile模板
    if( filereadable($umake) )
        "edit  $umake
        vsplit  $umake
        return
    endif

    " 如果都不存在, 默认编辑Makefile
    vsplit $Umake

    let &splitright = $Splitright
    " 生成Makefile之后, 会自动添加一行新内容
    "call MakeInput()
"}}}
endfun


" 1-2 编辑CMakeLists.txt
fun! EditCMakeLists()
    let $Splitright = &splitright
    set splitright

    let $CMake = './CMakeLists.txt'
    "edit $CMake
    vsplit $CMake

    let &splitright = $Splitright
endfun


" 3: open file by gui app
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


" 4: 显示当前文件名(绝对路径)
fun! ShowBufName()
    echo expand("%:p")
endfun
" 定义一个自定义命令
command!  ShowBufName  call ShowBufName()


" 5: 最大化当前窗口, 并显示文件名
fun! MaxCurrentWindow()
"{{{
    "resize 和 vertical resize命令如果不加尺寸参数, 参数就是widest 和
    "h :Ctrl-w__
    "h :Ctrl-w_|

    ":res[ize] [N]
    "CTRL-W CTRL-_                  *CTRL-W_CTRL-_* *CTRL-W__*
    "CTRL-W _   Set current window height to N (default: highest possible).

    ":vertical res[ize] [N]         *:vertical-resize* *CTRL-W_bar*
    "CTRL-W |   Set current window width to N (default: widest possible).

    resize          " equal <C-w>_, set windows to hightest
    vertical resize " equal to <C-w>|
    call ShowBufName()
"}}}
endfun

" 6: full screen gvim
fun! Full_screen_gvim()
"{{{
    "if has('gui_running')
    set lines=999 columns=999
    "endif
"}}}
endf

" 7 substitude 中文符号
fun! Sub_chinese_punc()
"{{{
    :%s/，/,/g
    :%s/．/./ge
    :%s/？/?/ge
    :%s/　/ /ge
    :%s/；/;/ge
    :%s/＃/#/ge
    :%s/、/,/ge

    :%s/＂/" /ge
    :%s/＇/' /ge

    :%s/（/(/ge
    :%s/）/)/ge

    :%s/＞/>/ge
    :%s/＜/</ge
"}}}
endf


" 8 插入fold {start, end} block
fun! InsertBlock(foldlevel, ...)
"{{{
    let line=getline('.')
    if !empty(a:000)
        let text=a:000[0]
    else
        let text=matchstr(line, '\S.*\S\@<=')
    endif
    if empty(line)
        normal! "_cc_"
        let indent=getline('.')[:-3]
    else
        let indent=matchstr(line, '^\s*')
    endif
    let cmsl=split(&commentstring, '%s', 1)
    let [startmarker, endmarker]=split(&foldmarker, ',')
    let left=(indent).get(cmsl, 0, '').startmarker
    if a:foldlevel>0
        let left.=a:foldlevel
    elseif a:foldlevel==0
        let left.='1'
    endif
    let left.=' '.text
    let right=''
    if !empty(get(cmsl, 1, ''))
        let right=' '.cmsl[1]
    endif
    call setline('.', left)
    normal! $
    if !empty(right)
        call setline('.', left.right)
        normal! l
    endif
    if a:foldlevel==-1
        call append('.', (indent).get(cmsl, 0, '').endmarker)
    endif
"}}}
endfunction

fun! CloseBlock(foldlevel)
"{{{
    if a:foldlevel==0
        return
    endif
    let [startmarker, endmarker]=split(&foldmarker, ',')
    let foldstart=search('\V'.escape(startmarker, '\').a:foldlevel, 'bnW')
    let cmsl=split(&commentstring, '%s', 1)
    if foldstart
        let indent=matchstr(getline(foldstart), '^\s*')
    else
        normal! "_cc_"
        let indent=getline('.')[:-3]
    endif
    call setline('.', (indent).get(cmsl, 0, '').endmarker.a:foldlevel.
                \              get(cmsl, 1, ''))
"}}}
endfunction
"{{{
"nnoremap ,{          o<C-o>:call InsertBlock(foldlevel('.'))<CR><Esc>
"nnoremap ,}          o<C-o>:call InsertBlock(foldlevel('.')+1)<CR><Esc>
"nnoremap ,[          o<C-o>:call InsertBlock(foldlevel('.')-1)<CR><Esc>
"nnoremap ,-          o<C-o>:call CloseBlock(foldlevel('.'))<CR><Esc>

"inoremap ,{           <C-o>:call InsertBlock(foldlevel('.'))<CR>
"inoremap ,}           <C-o>:call InsertBlock(foldlevel('.')+1)<CR>
"inoremap ,[           <C-o>:call InsertBlock(foldlevel('.')-1)<CR>
"inoremap ,-           <C-o>:call CloseBlock(foldlevel('.'))<CR>
"inoremap ,+           <C-o>:call InsertBlock(foldlevel('.')+1)<CR><CR><C-o>:call CloseBlock(foldlevel('.'))<CR>
"}}}

" 9 only Man page(for bash mav)
fun! ManWinOnly(man_want)
"{{{
    echom a:man_want
    let $man_want=a:man_want
    Man $man_want
    only
"}}}
endf


" 10 Terminal + right(exec special key)
"{{{
fun! Terminal()
    terminal
    set ft=terminal
    "exe 'normal L'
    "exe 'normal \<C-w>L'
    "call feedkeys("\<C-W>\<C-W>")
    normal L
endf

command! Terminal  call Terminal()
"}}}


" 11 custom filetype fold
fun! Set_Fold_Surround()
"{{{

py3 <<EOF
import  vim

def set_fold_surround():
    cms = vim.eval("&cms")
    cms = cms.replace("%s", "")

    # 这里因为{{{, }}}太多, 不能用format()方法
    vim_cmd = "let b:surround_102 = \'{cms} {{{\r{cms} }}}\'"
    vim_cmd = vim_cmd.replace("{cms}", cms)

    # print(vim_cmd)
    vim.command(vim_cmd)

set_fold_surround()
EOF

"}}}
endfun
