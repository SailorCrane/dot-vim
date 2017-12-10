" vim: set foldmethod=marker  foldlevel=0: vim modeline( set )

" =================== vim script path variable =====================
"{{{
" 路径最后不要跟'/'
" 字符串尽量使用单引号, 这样可以使用双引号注释
let  $Crane_Vim_Home   = '~'
let  $Crane_Dot_Vim    = $Crane_Vim_Home . '/.vim'

let  $Vim_Scripts      = $Crane_Dot_Vim  . '/vim-scripts'
let  $Plugin_Script    = $Vim_Scripts    . '/plugin-vim'

let  $Crane_Vim_Bundle = $Crane_Dot_Vim  . '/bundle'
let  $Crane_Vim_Dict   = $Crane_Dot_Vim  . '/dict'
let  $Crane_Vim_The    = $Crane_Dot_Vim  . '/thesaurus'

let  $TEMPLATE         = $Crane_Dot_Vim  . '/templates'
let  $TEMPLATE_CPP     = $Crane_Dot_Vim  . '/templates/cpp'
let  $TEMPLATE_PYTHON  = $Crane_Dot_Vim  . '/templates/python'

"let  $SESSION          = $Crane_Dot_Vim  . '/session'
"}}}

set fileencodings=ucs-bom,utf-8,iso-8859,gbk,cp936,gb2312,big5,gb18030,latin1
set fileformats=unix,dos,mac
scriptencoding utf-8                     " required
syntax on                                " required

set nocompatible                         " required
set noerrorbells                         " 出错时不要响铃
set visualbell                           " no visuall ball
set t_vb=                                " 不知道作用

set rnu nu                               " 开启行号和相对行号
set expandtab                            " expand tab to <Space>
set tabstop=4 shiftwidth=4 softtabstop=4 " tab == 4<Space>
set smartindent                          " smart indent
set cindent                              " cindent  disabled smartindent

set showcmd                              " 没有完成的normal命令都在右下角提示
set ruler                                " 显示当先位置
set cursorline                           " autocmd窗口相关有设置(光标行线)
set cursorcolumn                         " 光标列线
set winminheight=0
set winminwidth=0

set laststatus=2                         " always show StatusLine
set cmdheight=2                          " ex-cmd height is 2 line

set verbose=0                            " no verbose

set ignorecase                           " 忽略大小写敏感
set smartcase
set nohlsearch                           " 永久激活:搜索结果高亮显示
set incsearch                            " /搜索时, 一遍输入,一遍已经开始实时搜索

let mapleader   = ','                    " 系统默认为'\', 其它映射可以用'\'
let g:mapleader = ','

runtime   ftplugin/man.vim               " 放在 source command-map.vim之前, 因为其中用了'Man'命令
runtime   macros/matchit.vim             " 激活vim自带的matchit.vim, 这样就不用这个matchit.vim插件了

set autoread
set autowrite                            " 跳转buffer时, 自动:write(bnext, bfirst...)
set autowriteall                         " 除了buffer外, 退出时也自动写入文件(:q, :qall, :edit...)

set scrolloff=3
set sidescroll=5

                                         " set background=light
set background=dark

set mouse=a                              " mouse support

set history=300
set backspace=indent,eol,start           " vim 默认在最后添加空行,禁止这种行为

set wildmenu  wildmode=full              " zsh style
"set wildmode=longest,list               " bash sytle

"set undodir                             " where to save undofile, default is '.'
"set undofile                            " enable undofile, undo saved at '.filename.un~'(wundo, rundo)

if has('cscope')                         " 'has()' :test vim enable feature
    set cscopetag                        " 优先使用cscopetag文件, (针对 ctrl-] 动作)
endif

set list
set listchars=tab:\|\                    " show tab in python/Makefile file
"set listchars=tab:▸-,eol:¬,trail:-      "
"set listchars=tab:\¦\                   " break vertical var

set wrapscan                             " 使用/, ?, n, N 搜索时, 如果搜索到底部, 环绕到第一行重新开始搜索

set shell=$SHELL                         " set :shell to run zsh

set colorcolumn=81

" grep, ack setting
"{{{
" 不太有用, 因为Ack插件工作的非常友好流畅
if executable('ack')
    set grepprg=ack\ --nogroup\ --column\ $* " ack support column
    set grepformat=%f:%l:%c:%m               " file, line, column, match-text
    "set grepprg=ack\ --nogroup\ $*          " ack no column
    "set grepformat=%f:%l:%m                 " file, line, column, match-text
else
    set grepprg=grep\ -E\ -n\ $*\ /dev/null  " add -E to default setting
endif
"}}}

set foldignore=                          " default is ignore '#'
set nrformats=alpha                      " number format(C-a plus, C-x minus)
set guitablabel=%N/\ %t\ %M              " gui tabpage name

" dictionary path and setting
"{{{
" set 可以保证不重复添加(不需要if), set赋值"="不能有空格.(不支持字符串"."连接)
set dictionary+=$Crane_Vim_Dict/words,$Crane_Vim_Dict/words_ch.txt

" 同义词字典
set thesaurus+=$Crane_Vim_The/mthesaur.txt " set 可以保证不重复添加(不需要if), set赋值"="不能有空格.(不支持字符串"."连接)

set completeopt+=longest
"set completeopt+=noselect
"}}}

" source scripts
"{{{
" 将source移动到最后
" source ~/.vim/vim-scripts/myBundle.vim
" 注意这里如果要编辑, 只能使用<Leader>e 前缀编辑, 无法通过gf跳转.
source  $Vim_Scripts/myBundle.vim
source  $Vim_Scripts/function.vim

source  $Vim_Scripts/normal-map.vim
source  $Vim_Scripts/insert-map.vim
source  $Vim_Scripts/opending-map.vim
source  $Vim_Scripts/command-map.vim
source  $Vim_Scripts/visual-map.vim
source  $Vim_Scripts/terminal-map.vim           " for vim8 or neovim

source  $Vim_Scripts/autocmd.vim
source  $Vim_Scripts/tmp-test.vim

"}}}

colorscheme  monokai                     " must after source plugin file
"{{{
"highlight SpecialKey guifg=#4a4a59
"hi ColorColumn ctermbg=lightgrey guibg=Red
hi SpecialKey gui=bold term=NONE  guibg=bg guifg=green
"}}}

let g:loaded_crane_vimrc = 1


" end source(local config): 比如在服务器上独特的配置.家里独特配置等等
source  $Vim_Scripts/global-local.vim
