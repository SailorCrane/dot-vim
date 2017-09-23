#! /bin/sh
#
# view-all-plugins.sh
# Copyright (C) 2017 crane <crane@crane-pc>
#
# Distributed under terms of the MIT license.
#

cd  .vim/vim-scripts/
grep  -E  "Bundle\s+[\"'].*"  --include="*.vim"  . -R --color -oh

