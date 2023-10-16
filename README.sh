#!/bin/sh

# ./README.sh or
# NG=1 ./README.sh

set -eux

about=precommit-bug

rm -rf $about-parent
git clone --recurse-submodules https://github.com/kuso800t/$about-parent.git
cd $about-parent/$about
git checkout main

./ok.sh
[[ ${NG:-} ]] && ./ng.sh
