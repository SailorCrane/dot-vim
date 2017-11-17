" vim: set fdm=marker foldlevel=0: vim modeline( set )


"0: WinManager: 形同鸡肋
"{{{
"Plug   'vim-scripts/winmanager'
"let g:winManagerWindowLayout = "TagList|FileExplorer"
"let g:winManagerWindowLayout = "TagList"

"let g:winManagerWidth = 30 "设置winmanager的宽度，默认为25
"定义打开关闭winmanager快捷键为F8
"nnoremap  <leader>ow  :WMToggle<cr>
"imap  <leader>z <esc>:WMToggle<cr> "定义打开关闭winmanager快捷键为F8

"let g:AutoOpenWinManager = 1 "在进入vim时自动打开winmanager

"}}}


"2: NERDTree in scrooloose
let g:nerdtree_all_commands = [
            \'NERDTree',
            \'NERDTreeToggle',
            \'NERDTreeFind',
            \'NERDTreeFocus',
            \'NERDTreeFromBookmark',
            \]
Plug  'scrooloose/nerdtree', { 'on' : g:nerdtree_all_commands }
" {{{
let NERDChristmasTree=0
let NERDTreeWinSize=35
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos="left"
" Automatically open a NERDTree if no files where specified
" autocmd vimenter * if !argc() | NERDTree | endif
" " Close vim if the only window left open is a NERDTree
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&
" b:NERDTreeType == "primary") | q | endif
" " Open a NERDTree
"nnoremap <leader>on :NERDTreeToggle<cr>
nnoremap <leader>on :NERDTreeFind<cr>
nnoremap <leader>tn :NERDTreeToggle<cr>
" }}}

" 2-2 dirvish
Plug 'justinmk/vim-dirvish'

" 2-3 vinegar
Plug 'tpope/vim-vinegar'


"3: code file tag about
Plug  'majutsushi/tagbar' , { 'on' : ['TagbarOpen', 'TagbarToggle'] }
" {{{
"5-2 Tagbar in vim-scripts's repo
" <leader>tt 被vim-scripts/Align使用了
" 所以这里使用ti: tag invert, tt :tag toggle
nnoremap  <leader>ot  :TagbarOpen<cr>
nnoremap  <leader>tt  :TagbarToggle<cr>
" <Leader>ct comflict with create tags
"nnoremap  <leader>ct  :TagbarOpen<cr>

" 打开tagbar时,自动显示行号
let g:tagbar_show_linenumbers=1
let g:tagbar_left = 0


"5: taglist in vim-scripts in github
"Plug  'taglist.vim'
" }}}


"4-1 bufexplorer
Plug   'jlanzarotta/bufexplorer' , { 'on' : ['BufExplorerVerticalSplit', 'ToggleBufExplorer'] }
"{{{
let g:bufExplorerSplitVertSize=30
nnoremap <leader>ob :BufExplorerVerticalSplit<CR>
nnoremap <leader>tb :ToggleBufExplorer<cr>
"}}}


"4-2:  minibufexplorer: 鸡肋
"Plug  'fholgado/minibufexpl.vim'
"{{{
" 因为在 打开quickfix窗口时, 老是崩溃, 所以禁止掉,以后使用bufexplorer
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplForceSyntaxEnable = 1
"let g:miniBufExplModSelTarget      = 1      "不在不可编辑窗口中打开选中的文件buffer
"let g:miniBufExplorerMoreThanOne   = 0      "最多只有一个miniBuf窗口
"nnoremap  <leader>mb   :MBEToggle!<cr>
"}}}


"5 mru files
Plug  'yegappan/mru' , { 'on' : ['MRU'] }
"{{{
nnoremap  <Leader>om   :MRU<CR>
nnoremap  <Leader>ov   :MRU vim<CR>
nnoremap  <Leader>op   :MRU py<CR>
"nnoremap  <Leader>os   :MRU sh<CR>
" 因为是根据文件匹配, 所以用py, 不用python
"}}}

"5-2 buffergator
Plug 'jeetsukumaran/vim-buffergator'

"6-1: undotree
Plug  'mbbill/undotree' ,   { 'on' : ['UndotreeShow', 'UndotreeToggle'] }
" {{{
nnoremap  <Leader>ou :UndotreeShow<cr>
nnoremap  <Leader>tu :UndotreeToggle<cr>
" }}}

"6-2 gundo stand for gnu undo
"Plug  'vim-scripts/gundo'


"8: wintab
"Plug  'zefei/vim-wintabs'

"9: minimap like sublime, provide a preview of all file
"Plug  'severin-lemaignan/vim-minimap'
"{{{
"let g:minimap_show='<Leader>oP'
"let g:minimap_toggle='<Leader>tp'
"let g:minimap_update='<Leader>ou'
"let g:minimap_close='<Leader>gc'
"}}}

"10 ctrlp
let g:ctrlp_working_path_mode = 0
Plug  'kien/ctrlp.vim'
" {{{
" in dir, search more file
let g:ctrlp_max_files=350
"let g:ctrlp_max_depth=40
" sp stand for "search ctrlP"
" CtrlP 插件 似乎是只要设置别的映射,映射到了CtrlP命令,那么<C-p>的映射就会自动取消.CtrlP的这个功能还是很棒的
" 这样<C-p> 就可以用在Yankring中了
" s stand for "search"
"let g:ctrlp_map = '<Leader>sp'  also is OK.

" CtrlP plugin use hasmapto(":<C-u>CtrlP<CR>") to detect is there a mapping
" alread for :CtrlP command
nnoremap  <Leader>sp  :<C-u>CtrlP<CR>

"nnoremap  <Leader>sb  :<C-u>FufBuffer<CR>
nnoremap  <Leader>sb  :<C-u>CtrlPBuffer<CR>
nnoremap  <Leader>sm  :<C-u>CtrlPMixed<CR>
" }}}

"10-2 FuzzyFinder: 路径搜索功能被denite替代(因为denite支持模糊搜索)
Plug  'vim-scripts/FuzzyFinder' , { 'on' : ['FufFile'] }
"{{{
" CtrlP 中没有什么插件可以比得上Fuzzy Find 的 FufFile, 可以搜索所有路径.
" sf stand for "search FuzzyFinder"
nnoremap  <Leader>sf  :<C-u>FufFile<CR>
"}}}

"10-3 unite(for vim8, nicer)
Plug  'Shougo/denite.nvim'
"{{{
" map like ctrlp
" h denite-key-mappings
"call denite#custom#map('insert', '<C-j>', '<denite:move_to_next_line>', 'noremap')
"call denite#custom#map('insert', '<C-k>', '<denite:move_to_previous_line>', 'noremap')
"nnoremap  <Leader>sd  :Denite file_rec<CR>
" 文件递归搜索比ctrlp好用
nnoremap  <Leader>sd  :Denite file_rec<CR>
"call denite#custom#map('insert', '<C-n>', '<denite:move_to_next_line>', 'noremap')
"call denite#custom#map('insert', '<C-p>', '<denite:move_to_previous_line>', 'noremap')
"}}}

"10-4 搜索文件
Plug  'wincent/ferret'


"12 tabman: tab + window管理, 类似于BufExplorer
Plug  'kien/tabman.vim'
"{{{
" 因为m 已经被MRU占用了
let g:tabman_toggle = '<leader>tM'
let g:tabman_focus  = '<leader>oM'
"}}}

"13 Conque-Shell
Plug   'oplatek/Conque-Shell', { 'on' : ['ConqueTermVSplit', 'ConqueTermVSplit'] }
" {{{
"nnoremap   <C-n>  :ConqueTermVSplit bash<CR>
"nnoremap   <C-b>  :ConqueTermVSplit bash<CR>
"noremap  <leader>ba  :ConqueTermVSplit bash<CR>
if executable('zsh')
    noremap  <leader>oc  :ConqueTermVSplit zsh<CR>
else
    noremap  <leader>oc  :ConqueTermVSplit bash<CR>
endif
let g:ConqueTerm_StartMessages = 0
" }}}


"14 calendar
Plug  'itchyny/calendar.vim', { 'on' : ['Calendar'] }
nnoremap <Leader>oC :Calendar<CR>


"15 goyo.vim
Plug  'junegunn/goyo.vim' , { 'on' : ['Goyo'] }
nnoremap <Leader>tg  :Goyo<CR>
nnoremap <Leader>cg  :Goyo!<CR>


"16 start page for vim
Plug  'mhinz/vim-startify'


"18 scratch
Plug 'SailorCrane/scratch.vim' , { 'on' : ['Scratch', '<plug>(scratch-selection-reuse)'] }
"{{{
let g:scratch_no_mappings = 1
nnoremap <Leader>os :Scratch<CR><C-w>T
xmap     <Leader>os <plug>(scratch-selection-reuse)<C-w>T

    " nmap gs <plug>(scratch-insert-reuse)
    " nmap gS <plug>(scratch-insert-clear)
    " xmap gs <plug>(scratch-selection-reuse)
    " xmap gS <plug>(scratch-selection-clear)
    " nnoremap gZzZz gs
"}}}

"19 nrrwrgn
Plug 'chrisbra/NrrwRgn'
