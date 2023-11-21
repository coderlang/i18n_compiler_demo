#!/bin/sh

root="$(pwd)"

git config --global pull.rebase true
git config --global submodule.recurse true

cd submodules/i18n_compiler/bin && ./i18n_compiler web "$root/submodules/i18n_language_demo/i18n.csv" "$root/i18n/assets"