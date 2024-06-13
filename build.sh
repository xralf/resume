#! /usr/bin/env bash

##
## Install markdow module:
##
# mkdir ~/pyenv/foo
# python3 -m venv ~/pyenv/foo
# source ~/pyenv/foo/bin/activate
# python3 -m pip install markdown
# ./buid.sh

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
