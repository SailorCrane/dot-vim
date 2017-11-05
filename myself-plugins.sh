#! /bin/sh
#
# show-changed-plugin.sh
# Copyright (C) 2017 crane <crane@crane-pc>
#
# Distributed under terms of the MIT license.
#


currentPath=$(pwd)
for dir in  vim/bundle/*
do
    if [ -d "$dir" ]
    then
        cd  $dir

        if [ -e .git ]  # 这里有可能.git是一个文件, 不是一个目录(submodule)
        then
            if git log | grep -E -e  "(21537991|crane)"  -i  > /dev/null

            then
                echo $dir
            fi
        fi

    fi

    cd $currentPath
done
