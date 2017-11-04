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

let  $TEMPLATE_CPP     = $Crane_Dot_Vim  . '/templates/cpp'
let  $TEMPLATE_PYTHON  = $Crane_Dot_Vim  . '/templates/python'

"let  $SESSION          = $Crane_Dot_Vim  . '/session'
"}}}
" =================== vim script path variable =====================

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

set mouse=a

set history=300
set backspace=indent,eol,start           " vim 默认在最后添加空行,禁止这种行为

set wildmenu  wildmode=full              " zsh style
"set wildmode=longest,list               " bash sytle

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
set grepprg=grep\ -E\ -n\ $*\ /dev/null  " add -E to default setting

set foldignore=                          " default is ignore '#'
set nrformats=alpha                      " number format(C-a, C-x)
set guitablabel=%N/\ %t\ %M              " gui tabpage name

" source scripts
"{{{
" 将source移动到最后
" source ~/.vim/vim-scripts/myBundle.vim
" 注意这里如果要编辑, 只能使用<Leader>e 前缀编辑, 无法通过gf跳转.
source  $Crane_Dot_Vim/vim-scripts/myBundle.vim
source  $Crane_Dot_Vim/vim-scripts/function.vim

source  $Crane_Dot_Vim/vim-scripts/normal-map.vim
source  $Crane_Dot_Vim/vim-scripts/insert-map.vim
source  $Crane_Dot_Vim/vim-scripts/opending-map.vim
source  $Crane_Dot_Vim/vim-scripts/command-map.vim
source  $Crane_Dot_Vim/vim-scripts/visual-map.vim
source  $Crane_Dot_Vim/vim-scripts/abbrev-map.vim

source  $Crane_Dot_Vim/vim-scripts/autocmd.vim
source  $Crane_Dot_Vim/vim-scripts/tmp-test.vim

"}}}

colorscheme  monokai                     " must after source plugin file
"{{{
"colorscheme  slate
"colorscheme  marklar   "from Colour-Sampler-Pack
"colorscheme  molokai
"colorscheme  zenburn
"highlight SpecialKey guifg=#4a4a59
"hi ColorColumn ctermbg=lightgrey guibg=Red
hi SpecialKey gui=bold term=NONE  guibg=bg guifg=green
"}}}

