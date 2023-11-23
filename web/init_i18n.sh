#!/bin/sh

git config --global submodule.recurse true

root="$(pwd)" && cd submodules/i18n_compiler/bin && ./i18n_compiler web "$root/submodules/i18n_language_demo/i18n.csv" "$root/i18n/assets" && cd - || exit;