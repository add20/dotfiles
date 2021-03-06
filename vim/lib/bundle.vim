" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make -f make_mac.mak',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }

" -------------------------------------------------------------------------

" vimdoc 日本語
NeoBundle 'vim-jp/vimdoc-ja'

" color scheme
NeoBundle 'altercation/vim-colors-solarized'

" status line
NeoBundle 'Lokaltog/vim-powerline'
" Git
NeoBundle 'tpope/vim-fugitive' " これをいれるとvim-powerlineにブランチ名が表示されるようになる
NeoBundle 'airblade/vim-gitgutter'

" " Unite
NeoBundle "Shougo/unite.vim"
NeoBundle "Shougo/neomru.vim"
NeoBundle 'Shougo/unite-outline'
NeoBundle 'tsukkee/unite-help'
NeoBundle 'tsukkee/unite-tag'

" ctrlp (ファイル検索)
NeoBundle 'kien/ctrlp.vim'

" neocomplcache
" NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neocomplete.vim'

" snippet
" NeoBundle 'Shougo/neosnippet.vim'
" NeoBundle 'honza/snipmate-snippets'
" NeoBundleLazy 'tommorris/scala-vim-snippets', {"autoload": {"filetypes": ["scala"]}}
" NeoBundle 'add20/add20-snippets.vim'

" コメントアウト
NeoBundle 'tomtom/tcomment_vim'

" syntax checker
NeoBundleLazy 'scrooloose/syntastic',  {
  \ "autoload": {"filetypes": ["java", "c", "d", "puppet", "javascript", "elixir", "ruby", "rust", "go", "ocaml"]}}

" Nginx
NeoBundle 'nginx.vim'

" Pandoc
NeoBundleLazy 'vim-pandoc/vim-pandoc', {"autoload": {"filetypes": ["pandoc"]}}

" Parrot
" NeoBundle 'parrot.vim'

" LLVM
NeoBundleLazy 'Superbil/llvm.vim', {"autoload": {"filetypes": ["llvm"]}}

" Arduino
NeoBundleLazy 'tclem/vim-arduino', {"autoload": {"filetypes": ["arduino"]}}

" Groovy
NeoBundleLazy 'groovy.vim', {"autoload": {"filetypes": ["groovy", "gradle"]}}

" Gradle
NeoBundleLazy 'tfnico/vim-gradle', {"autoload": {"filetypes": ["gradle"]}}

" Java
" NeoBundleLazy 'java_getset.vim',  {"autoload": {"filetypes": ["java"]}}

" Scala
NeoBundleLazy 'derekwyatt/vim-scala',  {"autoload": {"filetypes": ["scala"]}}

" Gauche
" NeoBundleLazy 'aharisu/vim_goshrepl',  {"autoload": {"filetypes": ["gauche"]}}

" Scheme
" NeoBundleLazy 'haruyama/scheme.vim',  {"autoload": {"filetypes": ["scheme"]}}

" Go
NeoBundleLazy 'fatih/vim-go',  {"autoload": {"filetypes": ["go"]}}

" Clojure
NeoBundleLazy 'tpope/vim-leiningen',  {"autoload": {"filetypes": ["clojure"]}}
NeoBundleLazy 'tpope/vim-fireplace',  {"autoload": {"filetypes": ["clojure"]}}
NeoBundleLazy 'guns/vim-clojure-static',  {"autoload": {"filetypes": ["clojure"]}}
" NeoBundle 'kien/rainbow_parentheses.vim'

" D
NeoBundleLazy 'd.vim', {"autoload": { "filetypes": ["d"]}}

" Coq
NeoBundleLazy 'jvoorhis/coq.vim', {"autoload": { "filetypes": ["coq"]}}

" Elixir
NeoBundleLazy 'elixir-lang/vim-elixir', {"autoload": { "filetypes": ["elixir"]}}

" Erlang
NeoBundleLazy 'jimenezrick/vimerl', {"autoload": { "filetypes": ["erlang"]}}

" Elm
NeoBundleLazy 'lambdatoast/elm.vim', {"autoload": { "filetypes": ["elm"]}}

" Haskell
NeoBundleLazy 'eagletmt/ghcmod-vim', {"autoload": { "filetypes": ["haskell", "lhaskell"]}}
NeoBundleLazy 'eagletmt/unite-haddock', {"autoload": {"filetypes": ["haskell", "lhaskell"]}}
NeoBundleLazy 'ujihisa/neco-ghc', {"autoload": {"filetypes": ["haskell", "lhaskell"]}}
NeoBundleLazy 'ujihisa/unite-haskellimport', {"autoload": {"filetypes": ["haskell", "lhaskell"]}}
NeoBundleLazy 'dag/vim2hs', {"autoload": {"filetypes": ["haskell", "lhaskell"]}}

" PureScript
NeoBundleLazy 'raichoo/purescript-vim', {"autoload": {"filetypes": ["purescript"]}}

" Puppet
NeoBundleLazy 'Puppet-Syntax-Highlighting',  {"autoload": {"filetypes": ["puppet"]}}

" Python
NeoBundleLazy 'nvie/vim-flake8' , {"autoload": {"filetypes": ["python"]}}
NeoBundleLazy 'indentpython.vim', {"autoload": {"filetypes": ["python"]}}

" Perl
NeoBundleLazy 'vim-perl/vim-perl', {"autoload": {"filetypes": ["perl"]}}

" Rust
NeoBundleLazy 'wting/rust.vim', {"autoload": {"filetypes": ["rust"]}}

" Ruby
NeoBundleLazy 'vim-ruby/vim-ruby', {"autoload": {"filetypes": ["ruby"]}}
" NeoBundleLazy 'taichouchou2/vim-rsense',  {"autoload": {"filetypes": ["ruby"]}}
" NeoBundleLazy 'tpope/vim-rails',  {"autoload": {"filetypes": ["ruby"]}}

" Template Engine
NeoBundleLazy 'slim-template/vim-slim',  {"autoload": {"filetypes": ["slim"]}}
NeoBundleLazy 'digitaltoad/vim-jade',  {"autoload": {"filetypes": ["jade"]}}
NeoBundleLazy 'briancollins/vim-jst', {"autoload": {"filetypes": ["jst", "ejs"]}}

" JavaScript
NeoBundleLazy 'pangloss/vim-javascript', {"autoload": {"filetypes": ["javascript"]}}

" CoffeeScript
NeoBundleLazy 'kchmck/vim-coffee-script',  {"autoload": {"filetypes": ["coffee"]}}

" Mustache
NeoBundleLazy 'mustache/vim-mustache-handlebars', {"autoload": {"filetypes": ["mustache"]}}

" TOML
NeoBundleLazy 'cespare/vim-toml', {"autoload": {"filetypes": ["toml"]}}

" JSON
NeoBundleLazy 'JSON.vim',  {"autoload": {"filetypes": ["json"]}}

" YAML
NeoBundleLazy 'avakhov/vim-yaml',  {"autoload": {"filetypes": ["yaml"]}}
NeoBundleLazy 'yaml.vim',  {"autoload": {"filetypes": ["yaml"]}}

" Smooth-Scrollと相性が悪い(<C-B>,  <C-U>が効かなくなる)
" NeoBundleLazy 'mattn/zencoding-vim', {"autoload": {"filetypes": ["html"]}}
NeoBundleLazy 'mattn/emmet-vim', {"autoload": {"filetypes": ["html", "erb", "mustache"]}}

" テキストオブジェクト
NeoBundle 'textobj-user'
NeoBundle 'textobj-indent'
NeoBundleLazy 'textobj-rubyblock', {"autoload": {"filetypes": ["ruby"]}}

" 括弧
NeoBundle 'tpope/vim-surround'

" 閉じ括弧の自動補完
" NeoBundle 'AutoClose'

" オートセーブ
NeoBundle 'syui/wauto.vim'

" タブごとのcd
NeoBundle "kana/vim-tabpagecd"

" <C-a>でtrue/false切替。他色々
" NeoBundle 'taku-o/vim-toggle'

NeoBundle 'thinca/vim-quickrun'

NeoBundle 'vim-scripts/matchit.zip'
" NeoBundle 'Lokaltog/vim-easymotion'
" NeoBundle 'rstacruz/sparkup', {'rtp': 'vim/'}

"
" vim-scripts repos
"
" minibufexpl.vim : タブエディタ風にバッファ管理ウィンドウを表示
" NeoBundle 'minibufexpl.vim'

" NERDTree : ツリー型エクスプローラ
NeoBundle 'The-NERD-tree'

" タグリスト
NeoBundle 'taglist.vim'
NeoBundle 'Tagbar'

" Grep
NeoBundle 'rking/ag.vim'

" indent
NeoBundle 'Yggdroot/indentLine'
" NeoBundle 'nathanaelkane/vim-indent-guides'

" コード整形
NeoBundle 'junegunn/vim-easy-align'

" Smooth Scroll
" NeoBundle 'Smooth-Scroll'

" キャメルケースでの移動
NeoBundle 'camelcasemotion'

" NeoBundle 'L9'
" NeoBundle 'FuzzyFinder'
" NeoBundle 'rails.vim'

" Non github repos
" NeoBundle 'git://git.wincent.com/command-t.git'
" Non git repos
" NeoBundle 'http://svn.macports.org/repository/macports/contrib/mpvim/'
" NeoBundle 'https://bitbucket.org/ns9tks/vim-fuzzyfinder'

" -------------------------------------------------------------------------

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
