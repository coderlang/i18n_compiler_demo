### 添加多语言文件子模块

```shell
git submodule add https://github.com/coderlang/i18n_language_demo.git submodules/i18n_language_demo
```

### 添加多语言编译器子模块

```shell
git submodule add https://github.com/coderlang/i18n_compiler.git submodules/i18n_compiler
```

### 配置```git pull``` 同步更新子模块
```shell
git config --global submodule.recurse true
```

### 执行命令

执行 ```./init.sh ```