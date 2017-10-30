" vim: set foldmethod=marker  foldlevel=2: vim modeline( set )

filetype off     " required

" 注意 '+=' 两边不能有空格(set不可以带空格, let可以)
" 所有vim内置的set命令, 等号两边都不能有空格
" $Crane_Dot_Vim 在 本项目自带的vimrc中配置
" 路径变量不要以 "/" 结尾
set  rtp+=$Crane_Vim_Bundle/vundle/

call vundle#rc() " let Vundle manage Vundle,  required!


Bundle "gmarik/vundle.git"
Bundle "junegunn/vim-plug.git"


" 将插件按功能分在不同目录
source   $Plugin_Script/plugin-common.vim
source   $Plugin_Script/plugin-window.vim      " 和窗口相关的: undoTree, nerdtree, bufferexplorer, tagbar, winmanager
source   $Plugin_Script/plugin-view.vim        " 和外观显示相关的: 主题等 airline, rainbow
source   $Plugin_Script/plugin-scheme.vim
source   $Plugin_Script/plugin-code.vim        " 和coding 相关的
source   $Plugin_Script/plugin-python.vim
source   $Plugin_Script/plugin-ft.vim          " 和文件类型相关关:markdown, vim-tmux


" 必须讲filetype on放在最后
" 因为filetype on时vim会执行ftplugin.vim 一次, 并且只执行一次(标志位控制)
" locate  ftplugin.vim 可以查看

" 在ftplugin.vim 中会执行runtimepath下的
" runtime/ftplugin/type.vim     比如python.vim
" runtime/ftplugin/type/*.vim   比如python/some.vim

" 而runtime在Bundle命令执行后, 才会添加到runtimepath中
" 所以将Bundle命令放在filetype on命令之前
filetype plugin indent on
filetype on
