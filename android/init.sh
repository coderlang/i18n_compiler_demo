#!/bin/sh

root="$(pwd)"

git config --global pull.rebase true
git config --global submodule.recurse true

cd submodules/i18n_compiler/bin && ./i18n_compiler android "$root/submodules/i18n_compiler/test/i18n.csv" "$root/res/"