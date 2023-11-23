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

### 例子
[android](android)
[ios](ios)
[web](web)

### 流程

1. 产品&运营负责维护 [i18n_language_demo.git](https://github.com/coderlang/i18n_language_demo) 多语言仓库，Excel 编辑，导出 csv，提交版本；

2. 多语言更新了，则告诉开发 git pull，开发在 [i18n_compiler_demo.git](https://github.com/coderlang/i18n_compiler_demo.git) 执行git pull， 则可以将多语言更新到 submodules/i18n_language_demo 目录

3. 开发 git pull 完毕，则执行 init_i18n.sh 命令。