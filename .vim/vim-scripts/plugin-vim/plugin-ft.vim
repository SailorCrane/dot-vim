" vim: set foldmethod=marker  foldlevel=2: vim modeline( set )

" 64 tmux-vim:
" 添加tmux filetype, 这样编辑~/.tmux.conf时, 可以有彩色.
" 识别出文件类型后也可以快速添加注释了.
Bundle "tmux-plugins/vim-tmux.git"


" 和文件类型有关的插件: 比如颜色显示等等
" 70 markdown preview plugin( need nodejs + npm )
"sudo npm -g install instant-markdown-d
"sudo apt-get install xdg-utils
"sudo apt-get install curl
"sudo apt-get install nodejs-legacy        # (for Debian-based systems)
Bundle "suan/vim-instant-markdown.git"
let g:instant_markdown_autostart = 0        " 只有在markdown文档中, 并且设置了这里的非自动preview
                                            " 才会有InstantMarkdownPreview
                                            " 命令可以使用


" markdown syntax color
Bundle "tpope/vim-markdown.git"
autocmd  BufNewFile,BufReadPost  *.md set filetype=markdown
let  g:markdown_fenced_languages = ['html', 'python', 'bash=sh']
let  g:markdown_minlines = 100


" xml folding
Bundle "vim-scripts/XML-Folding"
