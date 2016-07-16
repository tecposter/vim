set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required

Plugin 'VundleVim/Vundle.vim'

Plugin 'editorconfig/editorconfig-vim'
" Plugin 'maksimr/vim-jsbeautify'
" Plugin 'alpaca-tc/beautify.vim'
Plugin 'flazz/vim-colorschemes'

" Plugin '2072/vim-syntax-for-PHP.git'
Plugin 'swekaj/php-foldexpr.vim'
" Plugin 'captbaritone/better-indent-support-for-php-with-html'
" Plugin 'stephpy/vim-php-cs-fixer'

Plugin 'scrooloose/nerdtree'
"Plugin 'tpope/vim-vinegar'

Plugin 'Shougo/vimproc.vim'

Plugin 'Shougo/unite.vim'
Plugin 'Shougo/neoyank.vim'
Plugin 'Shougo/neomru.vim'

Plugin 'kien/ctrlp.vim'
" Plugin 'scrooloose/syntastic'

" Git
Plugin 'tpope/vim-fugitive'
Plugin 'gregsexton/gitv'
Plugin 'airblade/vim-gitgutter'

" Plugin 'tpope/vim-repeat'
" Plugin 'tpope/vim-surround'

" Plugin 'mkitt/tabline'


" Plugin 'joonty/vdebug'

" language-specific plugins
" Plugin 'mattn/emmet-vim', { 'for': 'html' }
Plugin 'gregsexton/MatchTag', { 'for': 'html' }
"Plugin 'othree/html5.vim', { 'for': 'html' }
Plugin 'pangloss/vim-javascript', { 'for': 'javascript' }

" Plugin 'moll/vim-node', { 'for': 'javascript' }
" Plugin 'jelera/vim-javascript-syntax', { 'for': 'javascript' }
" Plugin 'mxw/vim-jsx', { 'for': 'jsx' }
" Plugin 'elzr/vim-json', { 'for': 'json' }
" Plugin 'Quramy/tsuquyomi', { 'for': 'typescript', 'do': 'npm install' }
" Plugin 'Shougo/vimproc.vim', { 'do': 'make' }
" Plugin 'leafgarland/typescript-vim', { 'for': 'typescript' }
" Plugin 'juvenn/mustache.vim', { 'for': 'mustache' }
" Plugin 'mustache/vim-mustache-handlebars'
" Plugin 'digitaltoad/vim-jade', { 'for': 'jade' }
"Plugin 'cakebaker/scss-syntax.vim', { 'for': 'scss' }
" Plugin 'wavded/vim-stylus', { 'for': ['stylus', 'markdown'] }
" Plugin 'groenewege/vim-less', { 'for': 'less' }
Plugin 'ap/vim-css-color', { 'for': 'css' }
"Plugin 'hail2u/vim-css3-syntax', { 'for': 'css' }
" Plugin 'itspriddle/vim-marked', { 'for': 'markdown', 'on': 'MarkedOpen' }
" Plugin 'tpope/vim-markdown', { 'for': 'markdown' }
" Plugin 'fatih/vim-go', { 'for': 'go' }
" Plugin 'timcharper/textile.vim', { 'for': 'textile' }
" Plugin 'tclem/vim-arduino'
" Plugin 'davidoc/taskpaper.vim'

" Plugin 'chriskempson/tomorrow-theme', { 'for': 'color scheme' }
"Plugin 'chriskempson/base16-vim', { 'for': 'color scheme' }


"Plugin 'ervandew/supertab'

" Track the engine.
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
"Plugin 'honza/vim-snippets'

"Plugin 'Valloric/YouCompleteMe'



" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}
" All of your Plugins must be added before the following line

Plugin 'wikitopian/hardmode'

call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

