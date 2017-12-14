" vim: set fdm=marker  fdl=0: vim modeline( set )

" 1 quick edit: v:vimrc, n:normal, i:insert, p:plugin-bundle, a:abbrev
"{{{
" local  .vimrc and .gvimrc
nnoremap  <Leader>elv :vsplit $MYVIMRC<CR>
nnoremap  <Leader>elg :vsplit $MYGVIMRC<CR>

" .vimrc and .gvimrc
nnoremap  <Leader>ev  :vsplit  $Crane_Vim_Home/.vimrc<CR>
nnoremap  <Leader>eg  :vsplit  $Crane_Vim_Home/.gvimrc<CR>
nnoremap  <Leader>et  :vsplit  $Crane_Dot_Vim/test/HarryPotter-Stone.txt<CR>

" script of vim
nnoremap  <Leader>eV  :vsplit  $Vim_Scripts/visual-map.vim<CR>
nnoremap  <Leader>ef  :vsplit  $Vim_Scripts/function.vim<CR>
nnoremap  <Leader>en  :vsplit  $Vim_Scripts/normal-map.vim<CR>
nnoremap  <Leader>ei  :vsplit  $Vim_Scripts/insert-map.vim<CR>
nnoremap  <Leader>ec  :vsplit  $Vim_Scripts/command-map.vim<CR>
nnoremap  <Leader>eo  :vsplit  $Vim_Scripts/opending-map.vim<CR>

nnoremap  <Leader>eU  :vsplit  $Crane_Dot_Vim/vimtutal.txt<CR>

nnoremap  <Leader>eb  :vsplit  $Vim_Scripts/myBundle.vim<CR>
nnoremap  <Leader>ep  :vsplit  $Vim_Scripts/python.vim<CR>
nnoremap  <Leader>eC  :vsplit  $Vim_Scripts/autocmd.vim<CR>

nnoremap  <Leader>eE  :vsplit  $Vim_Scripts/example/<CR>

nnoremap  <Leader>eO  :vsplit  $Plugin_Script/plugin-common.vim<CR>
nnoremap  <Leader>eP  :vsplit  $Plugin_Script/plugin-python.vim<CR>
nnoremap  <Leader>eS  :vsplit  $Plugin_Script/plugin-scheme.vim<CR>

nnoremap  <Leader>ed  :vsplit  $Crane_Dot_Vim/doc/<CR>

" 编辑good-idea-script.vim, 记录最新学习情况, I表示Idea
nnoremap  <Leader>eI  :vsplit  $Vim_Scripts/good-idea-script.vim<CR>

" Prompt to open file with same name, different extension
" from  https://github.com/nelstrom/dotfiles/blob/master/vimrc
" <CR>用来完成 <C-r>=
"nnoremap  <Leader>er   :vsplit <C-R>=expand("%:r")."."<CR>
"}}}


" 2 bash/zsh
"{{{
nnoremap  <Leader>eB  :vsplit ~/.bashrc<CR>
nnoremap  <Leader>ez  :vsplit ~/.zshrc<CR>
" 太容易编辑了, "让出快捷键给plugin-python.vim
"nnoremap  <Leader>eP  :vsplit ~/.profile<CR>

nnoremap  <Leader>eA  :vsplit   $Crane_Sh_Dir/myAlias.sh<CR>
nnoremap  <Leader>eF  :vsplit   $Crane_Sh_Dir/myFunctions.sh<CR>
nnoremap  <Leader>eN  :vsplit   $Crane_Sh_Dir/net-operation.sh<CR>
"}}}


" 3 edit tools config
"{{{
nnoremap  <Leader>eD  :vsplit ~/.gdbinit<CR>
nnoremap  <Leader>eG  :vsplit ~/.gitconfig<CR>
nnoremap  <Leader>es  :vsplit ~/.subversion/config<CR>
nnoremap  <Leader>eT  :vsplit ~/.tmux.conf<CR>
"}}}


" 4 Makefile/CMakeLists
"{{{
" <leader>em 编辑当前目录下的Makefile/makefile, 如果不存在, 编辑Makefile
nnoremap  <Leader>em  :call EditMakefile()<CR>
nnoremap  <Leader>eM  :call EditCMakeLists()<CR>
"}}}


" 5 记录问题 + 记录工作iterms
nnoremap  <Leader>eq  :vsplit ./question-thunder.txt<CR>
nnoremap  <Leader>ew  :vsplit ./work-record.txt<CR>


" 100 network jquery network edit(网络编辑示例而已)
nnoremap  <Leader>ej  :vsplit https://code.jquery.com/jquery-3.2.1.js<CR>
