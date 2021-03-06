let mapleader = ' '
let maplocalleader = ' '

set nocompatible

set autoindent
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set backspace=indent,eol,start

filetype plugin indent on

au BufNewFile,BufRead *.ll set filetype=llvm
au BufNewFile,BufRead *.erl setlocal tabstop=4 softtabstop=4 shiftwidth=4 textwidth=80
au BufNewFile,BufRead *.erl set filetype=erlang
au BufNewFile,BufRead *.elm set filetype=elm
au BufNewFile,BufRead *.purs set filetype=purescript
au BufNewFile,BufRead *.hs set filetype=haskell
au BufNewFile,BufRead *.lhs set filetype=lhaskell
au BufNewFile,BufRead *.hsc set filetype=haskell
au BufNewFile,BufRead *.ml set filetype=ocaml
au BufNewFile,BufRead *.go set filetype=go
au BufNewFile,BufRead *.py setlocal tabstop=4 softtabstop=4 shiftwidth=4 textwidth=80
au BufNewFile,BufRead *.py set filetype=python
au BufNewFile,BufRead *.pl set filetype=perl
au BufNewFile,BufRead *.rb set filetype=ruby
au BufNewFile,BufRead *.rs set filetype=rust
au BufNewFile,BufRead *.rs setlocal tabstop=4 softtabstop=4 shiftwidth=4
au BufNewFile,BufRead *.js set filetype=javascript
au BufNewFile,BufRead *.coffee set filetype=coffee
au BufNewFile,BufRead *.java set filetype=java
au BufNewFile,BufRead *.scala set filetype=scala
au BufNewFile,BufRead *.{groovy,gradle} set filetype=groovy
au BufNewFile,BufRead *.clj set filetype=clojure
au BufNewFile,BufRead *.ino set filetype=arduino
au BufNewFile,BufRead *.slim set filetype=slim
au BufNewFile,BufRead *.jade set filetype=jade
" au BufNewFile,BufRead *.ejs set filetype=html
au! BufNewFile,BufRead *.json set filetype=json
au BufNewFile,BufRead *.yml set filetype=yaml
au BufNewFile,BufRead *.mustache set filetype=mustache
au BufNewFile,BufRead *.toml set filetype=toml
au BufNewFile,BufRead *.tex set filetype=tex
au BufNewFile,BufRead *.md set filetype=markdown
au BufNewFile,BufRead *.d set filetype=d tabstop=4 softtabstop=4 shiftwidth=4
au BufNewFile,BufRead *.v set filetype=coq
au BufNewFile,BufRead /etc/nginx/* set ft=nginx

autocmd FileType scheme :let is_gauche=1

set textwidth=0                  " 一行に長い文章を書いていても自動折り返しをしない
set autoread                     " 他で書き換えられたら自動で読み直す
set formatoptions+=lmoq          " テキスト整形オプション，マルチバイト系を追加
set nowrap
set nofoldenable
set foldminlines=1               " 畳み込みをしない最大行数
set laststatus=2
set nobackup
set noswapfile

set incsearch
set ignorecase
set smartcase

set ruler     " show the cursor position all the time
set showcmd   " display incomplete commands

" augroup CursorLine             " 現在行のハイライトをアクティブウィンドウに限定する
"   au!
"   au VimEnter,WinEnter,BufWinEnter * setlocal cursorcolumn
"   au WinLeave * setlocal nocursorcolumn
"   au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
"   au WinLeave * setlocal nocursorline
" augroup END

if (exists('+colorcolumn'))
  set colorcolumn=80
  highlight ColorColumn ctermbg=9
endif

set nobackup
if has('persistent_undo')
  set undodir=~/.vim/undo
  set undofile
endif

" 挿入モードでCtrl+kを押すとクリップボードの内容を貼り付けられるようにする "
imap <C-K>  <ESC>"*pa

set clipboard+=unnamed
set clipboard+=autoselect
set number

if has('mouse')
  set mouse=a
endif

"日本語の行の連結時には空白を入力しない。
set formatoptions+=mM

" 保存時に行末の空白を除去する
autocmd BufWritePre * :%s/\s\+$//ge

" 保存時にtabをスペースに変換する
if expand("%") != "Makefile"
  " autocmd BufWritePre * :%s/\t/ /ge
endif

" syntax on
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
  "Escの2回押しでハイライト消去
  nnoremap <ESC><ESC> :nohlsearch<CR><ESC>
endif

" insert mode での移動
imap  <C-e> <END>
imap  <C-a> <HOME>
" インサートモードでもhjklで移動（Ctrl押すけどね）
imap <C-n> <Down>
imap <C-p> <Up>
imap <C-b> <Left>
imap <C-f> <Right>

" http://d.hatena.ne.jp/thata/20100606/1275796513
" カーソルを表示行で移動する。物理行移動は<C-n>,<C-p>
nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up>   gk

" カーソル位置の単語をyankする
nnoremap vy vawy

"ビジュアルモード時vで行末まで選択
vnoremap v $h

" コンマの後に自動的にスペースを挿入
inoremap , ,<Space>

" Use Node.js for JavaScript interpretation
let $JS_CMD='node'
" To disable error highlighting altogether
" if you want to highlight line comment out bolow
let g:JSLintHighlightErrorLine = 0
filetype plugin on
