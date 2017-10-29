#! /bin/sh
#
# view-all-plugins.sh
# Copyright (C) 2017 crane <crane@crane-pc>
#
# Distributed under terms of the MIT license.
#

cd  .vim/vim-scripts/
#grep  -E  "[\"]?Bundle\s+[\"'].*"  --include="*.vim"  . -R --color -oh
#grep  -E  "[^\"]?Bundle\s+[\"'].*"  --include="*.vim"  . -R --color -oh

echo "=================== used plugins ====================="
grep  -E  "\"?Bundle\s+[\"'].*"  --include="*.vim"  . -R --color -oh | grep -v "\"Bundle"

# env 是为了使用/bin/echo, 不同版本echo表现不同, sh的内置echo不支持-n
env echo -e "\n=================== no used plugins ====================="
grep  -E  "\"Bundle\s+[\"'].*"  --include="*.vim"  . -R --color -oh

