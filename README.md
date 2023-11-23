[i18n_compiler_demo.git](https://github.com/coderlang/i18n_compiler_demo.git ) 用于展示在Mac（x86,M1）, Windows 平台使用 [i18n_compiler.git](https://github.com/coderlang/i18n_compiler)，将 [i18n_language_demo](https://github.com/coderlang/i18n_language_demo) 编译为 iOS 、 Android 、 Web 需要的国际化文件。

### 使用添加子模块

1. 多语言文件 i18n_language_demo
```shell
git submodule add https://github.com/coderlang/i18n_language_demo.git submodules/i18n_language_demo
```

2. 多语言文件编译工具 i18n_compiler
```shell
git submodule add https://github.com/coderlang/i18n_compiler.git submodules/i18n_compiler
```

### 配置```git pull``` 时，同步更新子模块
```shell
git config --global submodule.recurse true
```

### 编译多语言命令
[android](android) [init_i18n.sh](android%2Finit_i18n.sh) 命令
```shell
#!/bin/sh

git config --global submodule.recurse true

root="$(pwd)" && cd submodules/i18n_compiler/bin && ./i18n_compiler android "$root/submodules/i18n_language_demo/i18n.csv" "$root/res/" && cd - || exit;
```

[ios](ios) [init_i18n.sh](ios%2Finit_i18n.sh) 命令

```shell
#!/bin/sh

git config --global submodule.recurse true

root="$(pwd)" && cd submodules/i18n_compiler/bin && ./i18n_compiler ios "$root/submodules/i18n_language_demo/i18n.csv" "$root/assets/" && cd - || exit;
```

[web](web) [init_i18n.sh](web%2Finit_i18n.sh) 命令
```shell
#!/bin/sh

git config --global submodule.recurse true

root="$(pwd)" && cd submodules/i18n_compiler/bin && ./i18n_compiler web "$root/submodules/i18n_language_demo/i18n.csv" "$root/i18n/assets" && cd - || exit;
```

### 流程（Android 演示）

1. 产品运营负责维护多语言仓库 [i18n_language_demo.git](https://github.com/coderlang/i18n_language_demo) ，excel 编辑，导出 csv，提交版本；

2. 多语言更新了，则告诉开发 git pull 代码，开发在 [i18n_compiler_demo.git](https://github.com/coderlang/i18n_compiler_demo.git) 执行 git pull， 则可以同步更新 submodules/i18n_language_demo 等子模块。

```shell
coderlang@android % git pull
Fetching submodule android/submodules/i18n_compiler
Fetching submodule android/submodules/i18n_language_demo

## git pull 完毕，执行 init_i18n.sh 初始化多语言

coderlang@android % ls
init_i18n.sh submodules

coderlang@android % ./init_i18n.sh

##  res 就是Android 需要的多语言文件

coderlang@android % ls
init_i18n.sh res          submodules

```