if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Plug 'Shougo/vimproc.vim', { 'do': 'make' }

" -----------------------------------------------------------------------------
"  Extent Vim Operation
" -----------------------------------------------------------------------------

" 日本語ドキュメント
Plug 'vim-jp/vimdoc-ja'

" カラースキーマ
Plug 'altercation/vim-colors-solarized'

" コード整形
Plug 'junegunn/vim-easy-align'

" コメントアウト
Plug 'tomtom/tcomment_vim'

" テキストオブジェクト
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'
Plug 'nelstrom/vim-textobj-rubyblock', { 'for': 'ruby' }

Plug 'vim-scripts/matchit.zip'

" 括弧
Plug 'tpope/vim-surround'

" 閉じ括弧の自動補完
" Plug 'AutoClose'

" オートセーブ
Plug 'syui/wauto.vim'

" タブごとのcd
Plug 'kana/vim-tabpagecd'

" <C-a>でtrue/false切替。他色々
" Plug 'taku-o/vim-toggle'

" Plug 'Lokaltog/vim-easymotion'

" indent
Plug 'Yggdroot/indentLine'
" Plug 'nathanaelkane/vim-indent-guides'

" Smooth Scroll
" Plug 'Smooth-Scroll'

" キャメルケースでの移動
Plug 'vim-scripts/camelcasemotion'

" -----------------------------------------------------------------------------
"  IDE Functionality
" -----------------------------------------------------------------------------

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh'
    \ }

" syntax checker
" Plug 'vim-syntastic/syntastic', { 'for': [ 'java', 'c', 'd', 'puppet', 'javascript', 'elixir', 'ruby' , 'rust', 'go', 'ocaml'] }
" Plug 'vim-syntastic/syntastic'

" status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Plug 'fholgado/minibufexpl.vim'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Unite
" Plug 'Shougo/unite.vim'
" Plug 'Shougo/neomru.vim'
" Plug 'Shougo/unite-outline'
" Plug 'tsukkee/unite-help'
" Plug 'tsukkee/unite-tag'

" ctrlp (ファイル検索)
Plug 'kien/ctrlp.vim'

" Plug 'Shougo/neocomplete.vim'

" snippet
" Plug 'Shougo/neosnippet.vim'
" Plug 'honza/snipmate-snippets'
" Plug 'tommorris/scala-vim-snippets', { 'for': 'scala' }
" Plug 'add20/add20-snippets.vim'

Plug 'thinca/vim-quickrun'

" NERDTree : ツリー型エクスプローラ
" Plug 'vim-scripts/The-NERD-tree', { 'on':  'NERDTreeToggle' }
" dev version
Plug 'preservim/nerdtree', { 'on':  'NERDTreeToggle' }

" タグリスト
Plug 'vim-scripts/taglist.vim'
Plug 'preservim/Tagbar'

" Grep
Plug 'rking/ag.vim'

" -----------------------------------------------------------------------------
"  Language Plugin
" -----------------------------------------------------------------------------

" Plug 'parrot.vim'
Plug 'Superbil/llvm.vim',        { 'for': 'llvm' }
Plug 'tclem/vim-arduino',        { 'for': 'arduino' }
Plug 'fatih/vim-go',             { 'for': 'go', 'tag': '*', 'do': ':GoInstallBinaries' }
Plug 'JesseKPhillips/d.vim',     { 'for': 'd' }
" Plug 'java_getset.vim',        { 'for': 'java' }
Plug 'derekwyatt/vim-scala',     { 'for': 'scala' }
Plug 'vim-scripts/groovy.vim',   { 'for': ['groovy', 'gradle'] }
Plug 'tfnico/vim-gradle',        { 'for': 'gradle' }
" Plug 'haruyama/scheme.vim',    { 'for': 'scheme' }
" Plug 'aharisu/vim_goshrepl',   { 'for': 'gauche' }
Plug 'jvoorhis/coq.vim',         { 'for': 'coq' }
Plug 'jimenezrick/vimerl',       { 'for': 'erlang' }
Plug 'elixir-lang/vim-elixir',   { 'for': 'elixir' }
Plug 'lambdatoast/elm.vim',      { 'for': 'elm' }
Plug 'raichoo/purescript-vim',   { 'for': 'purescript' }
Plug 'pangloss/vim-javascript',  { 'for': 'javascript' }
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }

" Clojure
Plug 'tpope/vim-leiningen',     { 'for': 'clojure' }
Plug 'tpope/vim-fireplace',     { 'for': 'clojure' }
Plug 'guns/vim-clojure-static', { 'for': 'clojure' }
" Plug 'kien/rainbow_parentheses.vim'

" Haskell
" Plug 'eagletmt/ghcmod-vim',         { 'for': ['haskell', 'lhaskell'] }
" Plug 'eagletmt/unite-haddock',      { 'for': ['haskell', 'lhaskell'] }
" Plug 'ujihisa/neco-ghc',            { 'for': ['haskell', 'lhaskell'] }
" Plug 'ujihisa/unite-haskellimport', { 'for': ['haskell', 'lhaskell'] }
Plug 'dag/vim2hs',                  { 'for': ['haskell', 'lhaskell'] }

" Python
Plug 'nvie/vim-flake8' , { 'for': 'python' }
Plug 'vim-scripts/indentpython.vim', { 'for': 'python' }

Plug 'vim-perl/vim-perl', { 'for': 'perl' }

" Rust
Plug 'rust-lang/rust.vim',   { 'for': 'rust' }
Plug 'racer-rust/vim-racer', { 'for': 'rust' }

" Ruby
Plug 'vim-ruby/vim-ruby',       { 'for': 'ruby' }
" Plug 'taichouchou2/vim-rsense', { 'for': 'ruby' }
" Plug 'tpope/vim-rails',         { 'for': 'ruby' }

Plug 'vim-scripts/nginx.vim'
Plug 'vim-pandoc/vim-pandoc', { 'for': 'pandoc' }
Plug 'vim-scripts/Puppet-Syntax-Highlighting', { 'for': 'puppet' }

" Template Engine
Plug 'slim-template/vim-slim',           { 'for': 'slim' }
Plug 'digitaltoad/vim-jade',             { 'for': 'jade' }
Plug 'briancollins/vim-jst',             { 'for': ['jst', 'ejs'] }
Plug 'mustache/vim-mustache-handlebars', { 'for': 'mustache' }

" Configuration format
Plug 'cespare/vim-toml', { 'for': 'toml' }
Plug 'vim-scripts/JSON.vim', { 'for': 'json' }
Plug 'avakhov/vim-yaml', { 'for': 'yaml' }
Plug 'vim-scripts/yaml.vim', { 'for': 'yaml' }

" Smooth-Scrollと相性が悪い(<C-B>,  <C-U>が効かなくなる)
" Plug 'mattn/zencoding-vim', { 'for': 'html' }
Plug 'mattn/emmet-vim', { 'for': ['html', 'erb', 'mustache'] }

" Add plugins to &runtimepath
call plug#end()
