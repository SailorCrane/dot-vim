" vim: set foldmethod=marker  foldlevel=2: vim modeline( set )

filetype off     " required

" 注意 '+=' 两边不能有空格(set不可以带空格, let可以)
" 所有vim内置的set命令, 等号两边都不能有空格
" $CRANE_DOT_VIM 在 本项目自带的vimrc中配置
" 路径变量不要以 "/" 结尾
let  $CRANE_VIM_BUNDLE = $CRANE_DOT_VIM . '/bundle'
set  rtp+=$CRANE_VIM_BUNDLE/vundle/

call vundle#rc() " let Vundle manage Vundle,  required!


Bundle 'gmarik/vundle'


" 将插件按功能分在不同目录
source   $CRANE_DOT_VIM/vim-scripts/plugin-vim/plugin-common.vim
source   $CRANE_DOT_VIM/vim-scripts/plugin-vim/plugin-view.vim      " 和外观显示相关的: 包括窗口, 主题等
source   $CRANE_DOT_VIM/vim-scripts/plugin-vim/plugin-code.vim      " 和coding 相关的
source   $CRANE_DOT_VIM/vim-scripts/plugin-vim/plugin-python.vim


filetype plugin indent on
filetype on



