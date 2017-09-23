 ln  -s  $(pwd)/.vimrc   ~/.vimrc
 ln  -s  $(pwd)/.gvimrc  ~/.gvimrc

# link ~/.vim   link dir
srcDir=$(pwd)/.vim
destDir="${HOME}/.vim"     # variable not recognize "~/.vim"

if [ ! -d ${destDir} ]; then
    ln -s ${srcDir}  ${destDir}
else    # link dest dir exists
    echo "linkDir: failed to create symbolic ${destDir} : dir exists"  1>&2
fi

