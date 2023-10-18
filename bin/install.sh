#!/bin/bash

git clone https://github.com/lewiswolf/score-template.git
cp -a score-template/. .
rm -rf score-template
rm -rf .git
rm -rf bin
rm .gitignore
rm .editorconfig