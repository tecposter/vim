# vim

create file ~/.vimrc

source ~/.vim/plugins.vim
source ~/.vim/funs.vim
source ~/.vim/rc.vim


git remote add vundle https://github.com/VundleVim/Vundle.vim.git
git subtree add --prefix vendor/Vundle.vim vundle master --squash

:PluginList
:PluginInstall
:PluginClean
