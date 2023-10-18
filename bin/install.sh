#!/bin/bash
# This script install the repository ready for making a score.
# cd <your/directory> && sh install.sh

git clone https://github.com/lewiswolf/score-template.git
cp -a score-template/. .
rm -rf score-template
rm -rf .git
rm -rf bin
rm .gitignore
rm .editorconfig