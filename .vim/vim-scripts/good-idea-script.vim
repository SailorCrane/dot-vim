" 0: 这里面是一些好的vim脚本, 很有用, 很强大. 但是目前用不到的

" 1: 对{ 和 }之间的内容进行排序
:g/{/  .+1, /}/-1  sort

    html {
            border: 0;
            font-size: 100%;
            font: inherit;
            margin: 0;
            padding: 0;
            vertical-align: baseline;
    }
    body {
            background: white;
            color: black;
            line-height: 1.5;
    }


" 2: 对"{" 和 "}" 之间的内容, 缩进一次
" 注意:sil 写在最前面
" > 是一条:Ex 命令, 用来进行缩进, :h :>
    :silent g/{/  .+1, /}/-1  >
    :sil    g/{/  .+1, /}/-1  >


" 3: 最大化当前窗口函数
http://www.tuicool.com/articles/r2iEVnU

function! Zoom ()
    " check if is the zoomed state (tabnumber > 1 && window == 1)
    if tabpagenr('$') > 1 && tabpagewinnr(tabpagenr(), '$') == 1
        let l:cur_winview = winsaveview()
        let l:cur_bufname = bufname('')
        tabclose

        " restore the view
        if l:cur_bufname == bufname('')
            call winrestview(cur_winview)
        endif
    else
        tab split
    endif
endfunction

nmap <leader>z :call Zoom()<CR>


" 4: 自己写的最大化当前窗口, 并显示当前文件名
" 显示当前文件名
fun! ShowBufName()
    echo expand("%:p")
endfun

" 5: 最大化当前窗口, 并显示文件名
fun! MaxCurrentWindow()
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
endfun

" 6: copy global// to register
:g/TODO/yank A


" 7 使用函数获取当前窗口高度和宽度: 0 表示当前窗口
winpos 命令显示当前窗口坐标
winsize  1000  1000
echo  winheight(0)
echo  winwidth(0)

" 8 match tab not beigin with a line
match  ErrorMsg /\v[^\t]\t+/


"9 balloon
function! SimpleBalloon()
return 'Cursor is at line/column: ' . v:beval_lnum .
                                \'/' . v:beval_col .
                                \ ' in file ' . bufname(v:beval_bufnr) .
                                \ '. Word under cursor is: "' . v:beval_text . '"'
endfunction
set balloonexpr=SimpleBalloon()
set ballooneval


" browse confirm  e<CR>
:browse  confirm  e<CR>
" save as
:browse  confirm  saveas<CR>


" 9: 在 shell 脚 本 里 使 用 Vim
usr *26.4*
    假定你要在很多文件内把字符串 "-person-" 改成 "Jones",然后把它们打印出来。你该
    怎么做?一种方法是键入许许多多命令。另一种是写个 shell 脚本来完成这件工作。
    作为一个可视的交互式的编辑器,Vim 在执行普通模式命令时表现得极为出色。然而
    在批量处理时,普通模式命令无法产生简洁的带有注释的命令文件;在此,你该转而利用
    Ex 模式。该模式为你提供一种友好的命令行界面,方便你把命令写进一个批处理文件。
    ("Ex 命令" 无非是命令行 (:) 命令的另一个名称。)
    以下就是你所需要的 Ex 模式命令:

    %s/-person-/Jones/g
    write tempfile
    quit

    你把这些命令放进文件 "change.vim" 里。现在就用这个 shell 脚本在批量模式下运行
    编辑器:

    for file in *.txt; do
    vim -e -s $file < change.vim
    lpr -r tempfile
    done

    循环 for-done 是一个 shell 结构,用来重复执行循环结构内的两行命令,而变量
    $file 则在每次循环时被设成不同的文件名。

    脚本第二行的作用是对文件 $file 运行 Vim 且在 Ex 模式下 (参数 -e),并从文件
    "change.vim" 读取命令。参数 -s 告诉 Vim 运行在安静模式下。换言之,不要持续不断
    的发出 :prompt,或针对那个问题发出的任何别的提示。

    命令 "lpr -r tempfile" 打印执行中产生的文件 "tempfile" 并把它删除 (是参数
    -r 的作用)。

