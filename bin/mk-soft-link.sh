dotVimDir=$(readlink -f ..)

# 1
ln  -s  ${dotVimDir}/.vimrc   ~/.vimrc
ln  -s  ${dotVimDir}/.gvimrc  ~/.gvimrc

# 2 link ~/.vim   link dir
srcDir=${dotVimDir}/.vim
destDir="${HOME}/.vim"     # variable not recognize "~/.vim"

if [ ! -d ${destDir} ]; then
    ln -s ${srcDir}  ${destDir}
else    # link dest dir exists
    echo "linkDir: failed to create symbolic ${destDir} : dir exists"  1>&2
fi

# 3: cp python-tab.vim
python_tab=${dotVimDir}/vim-scripts/python-tab-git.vim
local_python_tab=${dotVimDir}/vim-scripts/python-tab-local.vim

if [ ! -e "${local_python_tab}" ]; then
    cp ${python_tab} ${local_python_tab}
else
    echo "exist file ${local_python_tab} "  1>&2
fi
