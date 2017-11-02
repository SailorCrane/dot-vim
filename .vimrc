" vim: set foldmethod=marker  foldlevel=0: vim modeline( set )

"0 一些变量的设置: 主要是.vimrc 和 .vim脚本位置
" 这样以后如果想配置在其它服务器上, 那么改变这里的变量即可
" edit 和 source 文件路径, 由变量作为路径前缀, 而不使用具体路径
" 路径最后不要跟"/"
" ====================================================================
let  $Crane_Vim_Home = '~'

" 下面的 "." 是vim的字符串连接运算符, 相当于其它编程语言中的string() + string()
" 下面的赋值语句, 相当于一个字符串 加法
" 一般情况下是 ~/.vim, 注意最后没有/结尾
" 路径最后不要跟"/"
let  $Crane_Dot_Vim    = $Crane_Vim_Home . "/.vim"

let  $Vim_Scripts      = $Crane_Dot_Vim  . "/vim-scripts"
let  $Plugin_Script    = $Vim_Scripts    . "/plugin-vim"

let  $Crane_Vim_Bundle = $Crane_Dot_Vim  . '/bundle'

let  $TEMPLATE_CPP     = $Crane_Dot_Vim  . "/templates/cpp"
let  $TEMPLATE_PYTHON  = $Crane_Dot_Vim  . "/templates/python"

let  $VIEW             = $Crane_Dot_Vim  . "/view"
let  $SESSION          = $Crane_Dot_Vim  . "/session"



" ====================================================================
" 0
syntax on   " 放在这里, 不要放在 Rainbow插件前, 使得:RainbowToggleOn有用武之地


"1 the script encoding setting
scriptencoding utf-8


"2  file encoding detect
set fileencodings=ucs-bom,utf-8,iso-8859,gbk,cp936,gb2312,big5,gb18030,latin1


"3 no compatible with vi
set nocompatible

" error bell setting
set noerrorbells
set visualbell
set t_vb=


"4  command line height ":"
set cmdheight=2
" if set cmdheight=2, then :set nu? rnu?<CR>  will now show the hit-enter


"5 tab to space: 1 tab -----> 4 space
set expandtab
set tabstop=4 shiftwidth=4  softtabstop=4


"6 indent
set smartindent
set cindent             "cindent  disabled smartindent


"7 cursor line and line number  show
set cursorline
set cursorcolumn
set rnu
set nu


"8 verbose is 0
" If need, set vbs=1 to show more information, vbs stand for verbose
set vbs=0


"9 show cmd which not end
" 执行命令时,在右下角显示未完成的命令
set showcmd


"10  about  search:  "/", "?"
" 在normal-map.vim 有快速toggle ignorecase 和 hlsearch的映射
set ignorecase      " 忽略大小写敏感

" 智能敏感:全部是小写时,大小写不敏感,包含大写时,大小写敏感.
" 注意: 激活了smartcase, 只有ignorecase之后, smartcase选项才能激活.
" 否则大小写敏感情况下, smartcase无论值是真是假, 都没用
set smartcase

set nohlsearch          " 永久激活:搜索结果高亮显示
set incsearch         " /搜索时, 一遍输入,一遍已经开始实时搜索
"set hlsearch incsearch


"11  <Leader> , note: global setting
let mapleader   = ","       "
let g:mapleader = ","       " global <Leader>


"12 enable :Man, 这样就可以使用命令:Man 在vim中查看Man文档
" 也可以使用<Leader>K 去查看光标下的关键字: 通过Man
" 但是我已经在normal-map.vim做了映射,如果exists(":Man"), K 就映射到<Leader>K
runtime   ftplugin/man.vim      " 放在 source command-map.vim之前, 因为其中用了'Man'命令
runtime   macros/matchit.vim    "激活vim自带的matchit.vim, 这样就不用这个matchit.vim插件了


"13 module scripts: 将source移动到最后,这样当所有先前条件准备好之后,再去source
" 比如上面的 runtime  ftplugin/man.vim
" 而normal-map 中有一个根据这个,对于<s-k>,即K的映射
" My map of 'normal', 'insert', 'visual', 'command', 'iabbrev'
" source ~/.vim/vim-scripts/myBundle.vim
" 注意这里如果要编辑, 只能使用<Leader>e 前缀编辑, 无法通过gf跳转.
source  $Crane_Dot_Vim/vim-scripts/myBundle.vim
source  $Crane_Dot_Vim/vim-scripts/function.vim
source  $Crane_Dot_Vim/vim-scripts/normal-map.vim
source  $Crane_Dot_Vim/vim-scripts/opending-map.vim     " operator-pending.vim
source  $Crane_Dot_Vim/vim-scripts/insert-map.vim

source  $Crane_Dot_Vim/vim-scripts/command-map.vim
source  $Crane_Dot_Vim/vim-scripts/visual-map.vim

source  $Crane_Dot_Vim/vim-scripts/abbrev-map.vim
source  $Crane_Dot_Vim/vim-scripts/autocmd.vim
source  $Crane_Dot_Vim/vim-scripts/tmp-test.vim


"14 autoread,文件被外部程序改变,gvim 和 vim自动重新加载,不发出提示
" reload, auto load, modified
set autoread


"15 scrolloff
set  scrolloff=3
set  sidescroll=5

set  ruler      "显示当先位置


"16 background
set background=light
"set background=dark


"17 mouse  support: 这样就支持鼠标点击了
" 支持鼠标改变窗口大小, 点击minibuf中的文件
" 支持鼠标点击TagBar中Tag
set mouse=a


"18 some normal settion
set history=300
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
"set endofline      "vim 默认在最后添加空行


"19 autowrite :切换buffer时, 文件会自动写入/自动保存到磁盘
set autowrite
set autowriteall


"20 wildmenu :命令行<tab>补全时,可以在statusline预览接下来会调到的选项
set wildmenu
"虽然在longest模式下,不起作用, 但是还是设置.
"这样在手动set wildmode=full时,wildmenu选项就可以立即投入使用,不用再去设置一次了

set wildmode=full       "最终发现, 还是习惯zsh这种full 风格 + wildmenu
"zsh style complete, need wildmenu to view more choise, 注意wildmode默认就是full mode, 这里列出来,主要是和下面形成对比.

"set wildmode=longest,list
"bash style complete, 这种情况下,就不再需要wildmenu了: 先试一段时间bash风格补全,不习惯再换回full (zsh) 风格


"21
set fileformats=unix,dos,mac


"22  cscope setting
if has("cscope")        " has(): 编译vim时如果有这个选项, has就为true
    set cscopetag   "优先使用cscopetag文件, 针对 ctrl-] 动作
endif


"23 about list: show whitespace
" tab:triangle ▸ is ctrl-v u25b8
" eol:ሴ is ctrl-v u1234
" eol:¬ is ctrl-v u00ac 这个换行符更好些,看起来更形象
" ¬ 是从vimcasts 复制过来, 然后个ga查看其编码的
" 当然: listchars 也可以显示trailing,
" 但是因为自己已经使用了showWhiteSpace插件, 所以就用不到这个了
"set nolist
set list
"set listchars=tab:▸-,eol:¬,trail:-
"set listchars=tab:>-,eol:ሴ
set listchars=tab:\|\        " show tab in python/Makefile file
"set listchars=tab:\█\        " full height vertical bar
"set listchars=tab:\¦\        " break vertical var
" Invisible character colors
"highlight NonText    guifg=#4a4a59
"highlight SpecialKey guifg=#4a4a59

" 23-2 :special  symbol
" Symbol	Unicode	Name
" ¬	    U+00AC	not   sign
" ▸	    U+25B8	black right-pointing small triangle
" ☠	    U+2620	skull and crossbones
" ❤	    U+2764	heavy black heart
" ‽	    U+203d	interobang


" 24 注意set 选项和值之间不能有空格: 否则vim不识别
" 无论insert 和 normal模式,都可以用, 插入模式也可以用
" 注意这不是一个自定义映射, 是vim帮我们设置的一个映射
" 因为执行之后, 不能显示paste的当前值,所以不用, 还是手动映射
"set pastetoggle=<Leader>tp


" set laststatus=2: always show laststatus
" 在vim-airline中用到
set laststatus=2


" 25 使用/, ?, n, N 搜索时, 如果搜索到底部, 环绕到第一行重新开始搜索
set wrapscan


" 26
"set shell=/bin/bash    " default shell is bash
"set shell=/bin/zsh     " set :shell to run zsh
set shell=$SHELL    " set :shell to run zsh


" 27 超出81列时, 会高亮
set colorcolumn=81
hi ColorColumn ctermbg=lightgrey guibg=Red


" 28 grep setting
set grepprg=grep\ -E\ -n\ $*\ /dev/null  " add -E to default setting
"set grepprg=ack\ -H\ --nocolor\ --nogroup


" 29 no foldignore
set foldignore=


" 30
set nrformats=alpha


" 31 tabpage name
set guitablabel=%N/\ %t\ %M


"100  vim colorscheme, gvim colorscheme in ~/.gvimrc
"colorscheme  slate
"colorscheme  marklar   "from Colour-Sampler-Pack
"colorscheme  molokai
colorscheme  monokai

hi SpecialKey gui=bold term=NONE  guibg=bg guifg=green


"101 这是一个对于系统export环境变量的测试, 在$tmpPath中放入了var.vim
" var.vim echom一句话,借以测试vim是否支持系统环境变量
" 如果支持,那么所有的脚本,不再使用~/路径, 而是使用路径变量名,
" 这样移植到其它系统会更容易
"source $tmpPath/var.vim
