# vim

## git clone 

```
mkdir ~/.vim
cd ~/.vim
git clone git@github.com:tecposter/vim.git .
```

## create .vimrc

```
vi ~/.vimrc
```

add the following content into .vimrc

```
source ~/.vim/plugins.vim
source ~/.vim/funs.vim
source ~/.vim/rc.vim
```


## install plugins

execute following commands in vim
```
:PluginInstall
```
other usefull commands
```
:PluginList
:PluginClean
```

## how add Vundle.vim as subtree
you may ignore it

```
git remote add vundle https://github.com/VundleVim/Vundle.vim.git
git subtree add --prefix vendor/Vundle.vim vundle master --squash
```
