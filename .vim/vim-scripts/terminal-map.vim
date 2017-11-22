if has('nvim') || has('terminal')
    tnoremap  jk     <C-\><C-n>
    tnoremap  <ESC>  <C-\><C-n>
    tnoremap  <C-d>  <C-\><C-n>
    tnoremap  <C-c>  <C-\><C-n>:q!<CR>   " <C-c> 停止程序

    nnoremap <Leader>ot  :Terminal<CR>
endif
