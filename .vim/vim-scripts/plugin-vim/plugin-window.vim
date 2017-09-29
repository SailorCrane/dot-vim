" vim: set fdm=marker foldlevel=2: vim modeline( set )


"1: WinManager
"{{{
Bundle  "winmanager.git"
"let g:winManagerWindowLayout = "TagList|FileExplorer"
let g:winManagerWindowLayout = "TagList"

let g:winManagerWidth = 30 "设置winmanager的宽度，默认为25
"定义打开关闭winmanager快捷键为F8
nnoremap  <leader>ow  :WMToggle<cr>
"imap  <leader>z <esc>:WMToggle<cr> "定义打开关闭winmanager快捷键为F8

let g:AutoOpenWinManager = 1 "在进入vim时自动打开winmanager

"}}}


"2: NERDTree in scrooloose
" {{{
Bundle "scrooloose/nerdtree.git"
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
" }}}


"3: code file tag about
" {{{
Bundle "Tagbar.git"
"5-2 Tagbar in vim-scripts's repo
" <leader>tt 被vim-scripts/Align使用了
" 所以这里使用ti: tag invert, tt :tag toggle
nnoremap  <leader>ot  :TagbarToggle<cr>

" 打开tagbar时,自动显示行号
let g:tagbar_show_linenumbers=1
let g:tagbar_left = 1


"5: taglist in vim-scripts in github
"Bundle "taglist.vim.git"
" }}}


"4-1 bufexplorer
Bundle  "https://github.com/jlanzarotta/bufexplorer.git"
"{{{
let g:bufExplorerSplitVertSize=30
nnoremap <leader>ob :BufExplorerVerticalSplit<CR>
nnoremap <leader>oB :togglebufexplorer<cr>
"}}}


"4-2:  minibufexplorer
"{{{
" 因为在 打开quickfix窗口时, 老是崩溃, 所以禁止掉,以后使用bufexplorer
"Bundle "fholgado/minibufexpl.vim.git"
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplForceSyntaxEnable = 1
"let g:miniBufExplModSelTarget      = 1      "不在不可编辑窗口中打开选中的文件buffer
"let g:miniBufExplorerMoreThanOne   = 0      "最多只有一个miniBuf窗口
"nnoremap  <leader>mb   :MBEToggle!<cr>
"}}}


"5 mru files
Bundle "vim-scripts/mru.vim"
nnoremap  <Leader>om   :MRU<CR>
nnoremap  <Leader>ov   :MRU vim<CR>
nnoremap  <Leader>op   :MRU py<CR>
nnoremap  <Leader>os   :MRU sh<CR>
" 因为是根据文件匹配, 所以用py, 不用python


"6: undotree
" {{{
Bundle "mbbill/undotree.git"
nnoremap  <Leader>ou :UndotreeToggle<cr>
" }}}


"8: wintab
"Bundle "zefei/vim-wintabs"
