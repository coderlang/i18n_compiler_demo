#!/bin/sh

root="$(pwd)"

cd submodules/i18n_compiler/bin && ./i18n_compiler android "$root/submodules/i18n_compiler/test/i18n.csv" "$root/res/"