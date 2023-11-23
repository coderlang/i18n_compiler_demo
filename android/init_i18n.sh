#!/bin/sh

git config --global submodule.recurse true

root="$(pwd)" && cd submodules/i18n_compiler/bin && ./i18n_compiler android "$root/submodules/i18n_language_demo/i18n.csv" "$root/res/" && cd - || exit;