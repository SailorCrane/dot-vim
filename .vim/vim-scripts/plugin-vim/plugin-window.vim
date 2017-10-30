" vim: set fdm=marker foldlevel=0: vim modeline( set )


"0: WinManager: 形同鸡肋
"{{{
"Bundle  'vim-scripts/winmanager'
"let g:winManagerWindowLayout = "TagList|FileExplorer"
"let g:winManagerWindowLayout = "TagList"

"let g:winManagerWidth = 30 "设置winmanager的宽度，默认为25
"定义打开关闭winmanager快捷键为F8
"nnoremap  <leader>ow  :WMToggle<cr>
"imap  <leader>z <esc>:WMToggle<cr> "定义打开关闭winmanager快捷键为F8

"let g:AutoOpenWinManager = 1 "在进入vim时自动打开winmanager

"}}}


"2: NERDTree in scrooloose
" {{{
Bundle 'scrooloose/nerdtree'
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


"3: code file tag about
" {{{
Bundle 'vim-scripts/Tagbar'
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
"Bundle 'taglist.vim'
" }}}


"4-1 bufexplorer
Bundle  'jlanzarotta/bufexplorer'
"{{{
let g:bufExplorerSplitVertSize=30
nnoremap <leader>ob :BufExplorerVerticalSplit<CR>
nnoremap <leader>tb :ToggleBufExplorer<cr>
"}}}


"4-2:  minibufexplorer
"{{{
" 因为在 打开quickfix窗口时, 老是崩溃, 所以禁止掉,以后使用bufexplorer
"Bundle 'fholgado/minibufexpl.vim'
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplForceSyntaxEnable = 1
"let g:miniBufExplModSelTarget      = 1      "不在不可编辑窗口中打开选中的文件buffer
"let g:miniBufExplorerMoreThanOne   = 0      "最多只有一个miniBuf窗口
"nnoremap  <leader>mb   :MBEToggle!<cr>
"}}}


"5 mru files
Bundle 'vim-scripts/mru.vim'
nnoremap  <Leader>om   :MRU<CR>
nnoremap  <Leader>ov   :MRU vim<CR>
nnoremap  <Leader>op   :MRU py<CR>
nnoremap  <Leader>os   :MRU sh<CR>
" 因为是根据文件匹配, 所以用py, 不用python


"6: undotree
" {{{
Bundle 'mbbill/undotree'
nnoremap  <Leader>ou :UndotreeShow<cr>
nnoremap  <Leader>tu :UndotreeToggle<cr>
" }}}


"8: wintab
"Bundle 'zefei/vim-wintabs'


"9: minimap like sublime, provide a preview of all file
"Bundle 'severin-lemaignan/vim-minimap'
"let g:minimap_show='<Leader>oP'
"let g:minimap_toggle='<Leader>tp'
"let g:minimap_update='<Leader>ou'
"let g:minimap_close='<Leader>gc'


"10 ctrlp
let g:ctrlp_working_path_mode = 0
Bundle 'kien/ctrlp.vim'
Bundle 'vim-scripts/FuzzyFinder'
" {{{
" in dir, search more file
let g:ctrlp_max_files=350
"let g:ctrlp_max_depth=40
" sp stand for "search ctrlP"
" sf stand for "search FuzzyFinder"
" CtrlP 插件 似乎是只要设置别的映射,映射到了CtrlP命令,那么<C-p>的映射就会自动取消.CtrlP的这个功能还是很棒的
" 这样<C-p> 就可以用在Yankring中了
" s stand for "search"
"let g:ctrlp_map = '<Leader>sp'  also is OK.

" CtrlP plugin use hasmapto(":<C-u>CtrlP<CR>") to detect is there a mapping
" alread for :CtrlP command
nnoremap  <Leader>sp  :<C-u>CtrlP<CR>

" CtrlP 中没有什么插件可以比得上Fuzzy Find 的 FunFile, 可以搜索所有路径.
nnoremap  <Leader>sf  :<C-u>FufFile<CR>

"nnoremap  <Leader>sb  :<C-u>FufBuffer<CR>
nnoremap  <Leader>sb  :<C-u>CtrlPBuffer<CR>
nnoremap  <Leader>sm  :<C-u>CtrlPMixed<CR>
" }}}


"11 tabman: tab + window管理, 类似于BufExplorer
Bundle 'kien/tabman.vim'
" 因为m 已经被MRU占用了
let g:tabman_toggle = '<leader>tM'
let g:tabman_focus  = '<leader>oM'
