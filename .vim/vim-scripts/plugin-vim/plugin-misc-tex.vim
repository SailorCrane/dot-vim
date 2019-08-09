
" 需要安装: tex相关package: apt-get install texlive(tex相关的所有package: latex)
" 需要一个pdf阅读器: 默认是:默认的系统pdf阅读器.

" 错误: Failed to compile bibliography
" https://github.com/xuhdev/vim-latex-live-preview/issues/21 (  )
" Failure because of these lines: they should be removed when using latexmk
" https://github.com/xuhdev/vim-latex-live-preview/blob/6aee95e42baf7cff24ab84512eb0c1bbde3b7110/plugin/latexlivepreview.vim#L163-L189
" I guess you don't get the error Failed to compile, but only Failed to compile bibliography.
" Do you have any .bib file in your directory or subdirectories?

Plug 'xuhdev/vim-latex-live-preview',  {'for': 'tex'}
