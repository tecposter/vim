set nocompatible " not compatible with vi
set autoread " detect when a file is changed

" indent  allow backspacing over autoindent
" eol     allow backspacing over line breaks (join lines)
" start   allow backspacing over the start of insert; CTRL-W and CTRL-U
"         stop once at the start of insert.
set backspace=indent,eol,start

" without the g: prefix, is used in a function body, it defines a variable local to that function.
"   See :help internal-variables and especially :helpg In a function:
" g: is mostly used in plugins to let global variables in order to
"   expose settings to other plugins or for you to play with in your
"   .vimrc.
" (http://techsupport1.xyz/question/11175358/vim-global-variables-and-mapleader):w

" set a map leader for more key combos
let mapleader = ','
let g:mapleader = ','


set history=1000 " change history to 1000
set textwidth=120

" Tab control
set expandtab " insert space characters whenever the tab key is pressed
set tabstop=4 " insert 4 spaces for a tab
set shiftwidth=4 " number of spaces to use for indent and unindent
retab " To change all the existing tab characters to match the current tab settings,

set smarttab " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set softtabstop=4 " edit as if the tabs are 4 characters wide
set shiftround " round indent to a multiple of 'shiftwidth'
set completeopt=longest,menuone
" set completeopt+=longest

set clipboard=unnamed " copy text from vim to other app

set ttyfast

" highlight conflicts
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

"set foldmethod=syntax " fold based on indent
"set foldnestmax=10 " deepest fold is 10 levels
"set nofoldenable " don't fold by default
"set foldlevel=1
"set foldnestmax=10 " deepest fold is 10 levels
"au BufWinLeave ?* mkview
"au BufWinEnter ?* silent loadview

" Searching
set ignorecase " case insensitive searching
set smartcase " case-sensitive if expresson contains a capital letter
set hlsearch
set incsearch " set incremental search, like modern browsers
set nolazyredraw " don't redraw while executing macros


set magic " Set magic on, for regex

set showmatch " show matching braces
set mat=2 " how many tenths of a second to blink


set encoding=utf8


set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors"
let base16colorspace=256 " Access colors present in 256 colorspace"
set background=dark
let g:gruvbox_italic=1
colorscheme elflord

" execute "set background=".$BACKGROUND
" execute "colorscheme ".$THEME


" set number " show line numbers
" set relativenumber " show relative line numbers
set number " show the current line number"

set wrap "turn on line wrapping
set wrapmargin=4 " wrap lines when coming within n characters from side
set linebreak " set soft wrapping
" set showbreak=… " show ellipsis at breaking

set autoindent " automatically set indent of new line
set smartindent

set autoindent " automatically set indent of new line

set laststatus=2 " show the satus line all the time


" Mappings
" ========

" set paste toggle
set pastetoggle=<F6>
" toggle paste mode
map <leader>v :set paste!<cr>


" toggle invisible characters
set invlist
set listchars=tab:▸\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
highlight SpecialKey ctermbg=none " make the highlighting of tabs less annoying
set showbreak=↪
nmap <leader>l :set list!<cr>

" search for word under the cursor
nnoremap <leader>/ "fyiw :/<c-r>f<cr>

nmap <leader>n :tabnew<cr>

nmap <leader>ii :setlocal foldmethod=indent<cr>


"set nobackup
"set nowritebackup
"set noswapfile
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp






" =======
" Plugins
" =======

" --------
" NERDTree
" --------
" close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=1
" show hidden files in NERDTree
let NERDTreeShowHidden=1
" remove some files by extension
"let NERDTreeIgnore = ['\.js.map$']
" Toggle NERDTree
nmap <leader>k :NERDTreeToggle<cr>
" expand to the path of the file in the current buffer
nmap <leader>y :NERDTreeFind<cr>

" -----------
" phpcomplete
" -----------
let g:phpcomplete_index_composer_command="composer"
"autocmd  FileType  php setlocal omnifunc=phpcomplete_extended#CompletePHP

" -----------
" CtrlP
" -----------
" CtrlP ignore patterns
let g:ctrlp_custom_ignore = {
    \ 'dir': '\.idea$\.phpcomplete_extended$\.git$\|node_modules$\|bower_components$\|\.hg$\|\.svn$',
    \ 'file': '\.exe$\|\.so$'
    \ }
"" only show files that are not ignored by git
""let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
"
"" search the nearest ancestor that contains .git, .hg, .svn
let g:ctrlp_working_path_mode = 0
nmap <leader>cc :CtrlPClearAllCaches<cr>


" ---------------
"  vim-javascript
"  pangloss/vim-javascript
" ---------------
"
"
set regexpengine=1
syntax enable

"autocmd FileType javascript set foldmethod=syntax

let javascript_enable_domhtmlcss = 1
"autocmd FileType javascript let b:javascript_fold = 1
let b:javascript_fold = 1
let g:javascript_conceal_function   = "ƒ"
let g:javascript_conceal_null       = "ø"
let g:javascript_conceal_this       = "@"
let g:javascript_conceal_return     = "⇚"
let g:javascript_conceal_undefined  = "¿"
let g:javascript_conceal_NaN        = "ℕ"
let g:javascript_conceal_prototype  = "¶"
let g:javascript_conceal_static     = "•"
let g:javascript_conceal_super      = "Ω"

" ----------
"  syntastic
" -----------
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"
"" allow es5 mode when looking at TypeScript
""let g:syntastic_typescript_tsc_args = '--module amd --target ES5 --noImplicitAny'
""let g:syntastic_typescript_checkers = ['jslint']
""let g:syntastic_javascript_checkers = ['jslint']
"let g:syntastic_php_checkers = ['php', 'phpcs', 'tidy', 'validator', 'w3']
"let g:syntastic_error_symbol='✗'
"let g:syntastic_warning_symbol='⚠'
"
"let g:syntastic_php_phpcs_args="--tab-width=0 --standard=$HOME/.vim/phpcs-ruleset.xml"





" ------
" Vdebug
" ------
"let g:vdebug_options = {
"\   'ide_key': 'xdebug',
"\   'break_on_open': 1,
"\   'server': '127.0.0.1',
"\   'port': '9001'
"\}
"
"let g:vdebug_keymap = {
"\    "run" : "<Leader>/",
"\    "run_to_cursor" : "<Down>",
"\    "step_over" : "<Up>",
"\    "step_into" : "<Left>",
"\    "step_out" : "<Right>",
"\    "close" : "q",
"\    "detach" : "x",
"\    "set_breakpoint" : "<Leader>p",
"\    "eval_visual" : "<Leader>e",
"\    "eval_under_cursor": "<leader>c"
"\}
"

" -------------------------------------
"  supertab & YouCompleteMe & ultisnips
" -------------------------------------
" make YCM compatible with UltiSnips (using supertab)
" let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsEditSplit="vertical"

let g:snips_author="Zjh <zhanjh@126.com>"
let g:snips_php_version="5.6"
let g:snips_license="http:://www.tecposter.cn/bsd-licence BSD Licence"
let g:snips_link="http:://www.tecposter.cn/"


set foldlevel=1

" -----------
" js beautify
" -----------
"nmap <leader>bj :call JsBeautify()<cr>
"nmap <leader>bh :call HtmlBeautify()<cr>
"nmap <leader>bc :call CSSBeautify()<cr>
"
"vnoremap <leader>bj :call RangeJsBeautify()<cr>
"vnoremap <leader>bh :call RangeHtmlBeautify()<cr>
"vnoremap <leader>bc :call RangeCSSBeautify()<cr>
"
"if has("autocmd") && exists("+omnifunc")
"    autocmd Filetype *
"        \   if &omnifunc == "" |
"        \       setlocal omnifunc=syntaxcomplete#Complete |
"        \   endif
"endif

" --------------------
"  alpaca-tc/beautify
" -------------------

"let g:beautify#beautifier#npm_beautifier#bin = {
"       \ 'javascript' : 'js-beautify',
"       \ 'css'        : 'css-beautify',
"       \ 'html'       : 'html-beautify' }
"let g:beautify#beautifier#jq#bin = 'jq'
"let g:beautify#beautifier#html2haml#bin = 'html2haml'
"let g:beautify#beautifier#sass_convert#bin = 'sass-convert'

" How to open result
" 'vnew', 'tabnew' etc..
" let g:beautify#default_outputter = 'current_buffer'

" If you want to use a new hash syntax of ruby19, you set the following variable to 1
" let g:beautify#beautifier#html2haml#ruby19_attributes = 0




nmap <leader>tf :Shell /var/ideapar/test/run --testsuite app-ipar --filter 'BrandTest'<cr><cr>
"nmap <leader>tf :Shell /var/ideapar/test/run --testsuite mars --filter 'TagTest'<cr><cr>
nmap <leader>ta :Shell /var/ideapar/test/run<cr><cr>
nmap <leader>vr :source ~/.vimrc<cr>
nmap <leader>ve :tabe ~/.vimrc<cr>


nnoremap <silent><leader>q :q<cr>

" Unite
" http://www.codeography.com/2013/06/17/replacing-all-the-things-with-unite-vim.html
" http://bling.github.io//blog/2013/06/02/unite-dot-vim-the-plugin-you-didnt-know-you-need/#comment-919769841

"nnoremap <C-p> :<C-u>Unite -no-split -buffer-name=files -start-insert -auto-preview file_rec/async:!<cr>
nnoremap <leader>p :<C-u>Unite -buffer-name=files -start-insert file_rec/async:!<cr>

nnoremap <leader>f :<C-u>Unite -no-split -buffer-name=files   -start-insert file<cr>
nnoremap <leader>r :<C-u>Unite -no-split -buffer-name=mru     -start-insert file_mru<cr>
nnoremap <leader>o :<C-u>Unite -no-split -buffer-name=outline -start-insert outline<cr>
nnoremap <leader>y :<C-u>Unite -buffer-name=yank    history/yank<cr>
nnoremap <leader>e :<C-u>Unite -no-split -buffer-name=buffer  buffer<cr>
nnoremap <leader>s :<C-u>Unite -buffer-name=quickmach  -quick-match buffer<cr>


nnoremap <leader>/ :<C-u>Unite -buffer-name=search  -auto-preview grep:.<cr>


" Git
" Bring up the output of git status with :Gstatus. Press - to add/reset a file's changes, or p to add/reset --patch. And
" guess what :Gcommit does!
"
nnoremap <leader>gs :<C-u>Gstatus<cr>
nnoremap <leader>gc :<C-u>Gcommit<cr>
nnoremap <leader>gd :<C-u>Gdiff<cr>
nnoremap <leader>gv :<C-u>Gitv!<cr>

" Php

nnoremap <leader>cs :<C-u>call Phpcs()<cr><cr>
nnoremap <leader>md :<C-u>call Phpmd()<cr><cr>

" js
nnoremap <leader>es :<C-u>call Eslint()<cr><cr>

" vim hardmode
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>

