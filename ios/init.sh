#!/bin/sh



git config --global pull.rebase true
git config --global submodule.recurse true

root="$(pwd)" && cd submodules/i18n_compiler/bin && ./i18n_compiler ios "$root/submodules/i18n_language_demo/i18n.csv" "$root/assets/" && cd - || exit;