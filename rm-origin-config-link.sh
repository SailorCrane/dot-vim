#! /bin/bash
#
# rm-origin-config-link.sh
# Copyright (C) 2017 crane <crane@crane-pc>
#
# Distributed under terms of the MIT license.
#

delLink() {
    file=$1
    if [ -L "$file" ];
    then
        rm -rf  $file
    fi
}


linkFiles=(~/.vimrc  ~/.gvimrc  ~/.vim)

for file in ${linkFiles[@]}; do
    delLink $file
done
