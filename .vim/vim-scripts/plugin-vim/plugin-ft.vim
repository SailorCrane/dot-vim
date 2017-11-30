" vim: set foldmethod=marker  foldlevel=0: vim modeline( set )

" 和文件类型有关的插件: 比如颜色显示等等

" tmux-vim:
" 添加tmux filetype, 这样编辑~/.tmux.conf时, 可以有彩色.
" 识别出文件类型后也可以快速添加注释了.
Plug  'tmux-plugins/vim-tmux'
Plug  'benmills/vimux'


" markdown preview plugin( need nodejs + npm )
Plug  'suan/vim-instant-markdown' , {'for' : 'markdown'}
"{{{
"sudo npm -g install instant-markdown-d
"sudo apt-get install xdg-utils
"sudo apt-get install curl
"sudo apt-get install nodejs-legacy        # (for Debian-based systems)
let g:instant_markdown_autostart = 0        " 只有在markdown文档中, 并且设置了这里的非自动preview
                                            " 才会有InstantMarkdownPreview
                                            " 命令可以使用
"}}}

" markdown syntax color
Plug  'tpope/vim-markdown' , {'for' : 'markdown'}
"{{{
autocmd  BufNewFile,BufReadPost  *.md set filetype=markdown
let  g:markdown_fenced_languages = ['html', 'python', 'bash=sh']
let  g:markdown_minlines = 100
"}}}

" xml folding
"Plug  'vim-scripts/XML-Folding'


" 速写 html/css/js(javascript) : 官方插件. ZenCoding renamed to Emmet.vim
Plug  'vim-scripts/Emmet.vim'   , {'for' : ['js', 'html', 'css']}


" nginx config
Plug 'chr4/nginx.vim'


"ld version scripts
Plug  'SailorCrane/ld-version-vim'
