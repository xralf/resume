#! /usr/bin/env bash

##
## Reset git repo
##
# rm -rf .git
# git init
# git add .
# git commit -m "inital commit"
# git remote add origin git@github-xralf:xralf/resume.git
# git push -u --force origin master

##
## Install markdow module:
##
# mkdir -p ~/pyenv/foo
# python3 -m venv ~/pyenv/foo
# source ~/pyenv/foo/bin/activate
# python3 -m pip install markdown
# pip3 install --upgrade pip

##
## Next time, just activate existing virtual environment as follows:
##
# cd ~/pyenv/foo
# pipenv shell
# cd ~/git/xralf/resume
# python3 -m pip install markdown
# cd git/xralf/resume
# ./build.sh
# open resume.html
# <print ... save ad PDF ... proint without headers and footers>
# TITLE: Resume Ralf Rantzau

# for f in *.md
# do
#   echo $f
#   python3 -m markdown -x markdown.extensions.extra -x markdown.extensions.codehilite -x markdown.extensions.footnotes -x markdown.extensions.smarty -x markdown.extensions.tables -x markdown.extensions.toc $f > $f.tmp
#   ./add_css.py $f.tmp resume.css > $f.html
#   rm $f.tmp
# done

# find . -iname "*.md.html" -exec bash -c 'mv "$0" "${0%\.md.html}.html"' {} \;

python3 -m markdown -x markdown.extensions.extra -x markdown.extensions.codehilite -x markdown.extensions.footnotes -x markdown.extensions.smarty -x markdown.extensions.tables -x markdown.extensions.toc resume.md > resume.tmp
./add_css.py resume.tmp resume.css > resume.html
rm resume.tmp

find . -iname "resume.md.html" -exec bash -c 'mv "$0" "${0%\.md.html}.html"' {} \;
