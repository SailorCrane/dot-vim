if has('nvim') || has('terminal')
    tnoremap  jk     <C-\><C-n>
    tnoremap  <ESC>  <C-\><C-n>
    tnoremap  <C-d>  <C-\><C-n>
    tnoremap  <C-h>  <C-\><C-n><C-w><C-h>

    nnoremap <Leader>ot  :Terminal<CR>
endif
