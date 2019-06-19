

"set bg=dark

"colorscheme  monokai
"colorscheme  solarized
"colorscheme  softblue
"colorscheme  apprentice
"colorscheme  onedark

"colorscheme  abstract
"colorscheme  jellybeans

"colorscheme  slate
"colorscheme  marklar   "from Colour-Sampler-Pack
"colorscheme  molokai
"colorscheme  zenburn

" " group 替换
" fun! Define_s()
"     " 一定不要忘了%
"     %s/define.serverMethod('client'/rpc_method(CLIENT_ONLY/ge
"     %s/define.serverMethod('server'/rpc_method(SERVER_ONLY/ge
"     %s/\vdefine\.(\w*)/\1()/ge
" endfun
