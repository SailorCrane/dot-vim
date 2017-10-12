" /mySaved/dot-vim/.vim/sessions/server.vim:
" Vim session script.
" Created by session.vim 2.13.1 on 12 October 2017 at 15:36:57.
" Open this file in Vim and run :source % to restore your session.

set guioptions=aegirLtb
silent! set guifont=Monospace\ 16
if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if &background != 'dark'
	set background=dark
endif
if !exists('g:colors_name') || g:colors_name != 'monokai' | colorscheme monokai | endif
call setqflist([{'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'dm/commons/datas/world_boss_data.py', 'text': 'Options ''-H'' and ''-f'' are mutually exclusive'}])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd /myWork/myCode/h54-server/Package/Script/Python
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +223 dm/server/space_components/imp_world_boss.py
badd +57 dm/server/stub_components/imp_world_boss.py
badd +96 dm/server/entities/space_stub.py
badd +86 dm/server/entities/space.py
badd +1 dm/server/components/imp_space.py
badd +204 dm/server/handlers/space_stub/scene.py
badd +97 dm/server/handlers/space_stub/space_handler.py
badd +1 ~/.vimrc
badd +87 dm/server/space_components/entities.py
badd +171 /mySaved/dot-vim/.vim/vim-scripts/normal-map.vim
badd +198 dm/commons/utils/util.py
badd +75 dm/clients/entities/space.py
badd +17 dm/commons/utils/gen.py
badd +186 /mySaved/dot-vim/.vim/vim-scripts/command-map.vim
badd +2 /mySaved/dot-vim/.vim/vim-scripts/python.vim
badd +1 /mySaved/dot-vim/HEAD^\{}-cached:.vim/vim-scripts/command-map.vim
badd +117 /mySaved/dot-vim/.vim/vim-scripts/plugin-vim/plugin-common.vim
badd +36 /mySaved/dot-vim/.vim/vim-scripts/plugin-vim/plugin-view.vim
badd +401 dm/server/entities/avatar.py
badd +22 dm/server/stub_components/imp_timer.py
badd +10 dm/server/space_components/imp_timer.py
badd +52 dm/commons/calculate/generator.py
badd +1 undotree_2
badd +1 diffpanel_3
badd +37 dm/server/stub_components/imp_branches.py
badd +27 dm/server/space_components/branch_mgr.py
badd +5 dm/server/entities/account.py
badd +1 dm/commons/datas/world_boss_data.py
badd +136 dm/server/entities/roll_stub.py
badd +1004 engine/servercommon/ServerEntity.py
badd +67 dm/server/wrapper/entity.py
argglobal
silent! argdel *
set stal=2
edit dm/server/entities/avatar.py
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabedit dm/server/entities/space_stub.py
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 61 - ((17 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
61
normal! 05|
tabedit dm/server/stub_components/imp_branches.py
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
14
silent! normal! zo
let s:l = 27 - ((21 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
27
normal! 09|
tabedit dm/server/stub_components/imp_world_boss.py
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
14
silent! normal! zo
let s:l = 34 - ((19 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
34
normal! 09|
tabedit dm/server/handlers/space_stub/scene.py
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
30
silent! normal! zo
55
silent! normal! zo
82
silent! normal! zo
let s:l = 76 - ((18 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
76
normal! 09|
tabedit dm/server/handlers/space_stub/space_handler.py
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
14
silent! normal! zo
43
silent! normal! zo
78
silent! normal! zo
90
silent! normal! zo
110
silent! normal! zo
111
silent! normal! zo
124
silent! normal! zo
137
silent! normal! zo
153
silent! normal! zo
160
silent! normal! zo
178
silent! normal! zo
199
silent! normal! zo
let s:l = 96 - ((17 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
96
normal! 024|
tabedit dm/server/entities/space.py
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
14
silent! normal! zo
77
silent! normal! zo
let s:l = 4 - ((3 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
4
normal! 0
tabedit dm/server/space_components/imp_world_boss.py
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=indent
setlocal fde=pymode#folding#expr(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
18
silent! normal! zo
let s:l = 34 - ((17 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
34
normal! 05|
tabedit dm/commons/datas/world_boss_data.py
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 12 - ((11 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
12
normal! 05|
lcd /myWork/myCode/h54-server/Package/Script/Python
tabnext 2
set stal=1
if exists('s:wipebuf')
"   silent exe 'bwipe ' . s:wipebuf
endif
" unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save

" Support for special windows like quick-fix and plug-in windows.
" Everything down here is generated by vim-session (not supported
" by :mksession out of the box).

1wincmd w
tabnext 2
if exists('s:wipebuf')
  if empty(bufname(s:wipebuf))
if !getbufvar(s:wipebuf, '&modified')
  let s:wipebuflines = getbufline(s:wipebuf, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:wipebuf
  endif
endif
  endif
endif
doautoall SessionLoadPost
unlet SessionLoad
" vim: ft=vim ro nowrap smc=128
