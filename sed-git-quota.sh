#! /bin/sh
#
# sed-del-git.sh
# Copyright (C) 2017 crane <crane@crane-pc>
#
# Distributed under terms of the MIT license.
#

# use (')  to replace (")
sed -i -r  "s/(Bundle\s+)\"([^\"]*)\"/\1\'\2'/"   $(find .vim/vim-scripts/ -name  "*.vim")
sed -i -r  "s/(Bundle\s+)\"([^\"]*)\.git\"/\1\'\2'/"   $(find .vim/vim-scripts/ -name  "*.vim")

# use dein to replace Bundle
sed -i -r  "s/Bundle\s+\"([^\"]*)\.git\"/\1\'\2'/"   $(find .vim/vim-scripts/ -name  "*.vim")
sed -i -r  "s/Bundle\s+'([^']*)'/call deni#add('\1')/" $(find .vim/vim-scripts/ -name  "*.vim")
call dein#add('Shougo/neocomplete.vim')


# delete ".git" suffix
#sed -i -r  "s/(Bundle\s+)'([^']*)\.git'/\1\'\2'/"   $(find .vim/bundle/ -name  "*.vim")

