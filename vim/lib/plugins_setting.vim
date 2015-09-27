" ---------------------------------
" merlin (OCaml)
" ---------------------------------
let g:opamshare = substitute(system('opam config var share'), '\n$', '', '''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"
" ---------------------------------
" fast-tags
" ---------------------------------
" au BufWritePost *.hs  silent !$ZSH_HOME/plugin/init-tags %
" au BufWritePost *.hsc silent !$ZSH_HOME/plug/init-tags %
" ---------------------------------
" vim-go
" ---------------------------------
let g:go_fmt_command = "goimports"
" let g:go_fmt_autosave = 0
" let g:go_highlight_functions = 1
" let g:go_highlight_methods = 1
" let g:go_highlight_structs = 1
" ---------------------------------
" tcomment_vim
" ---------------------------------
if !exists('g:tcomment_types')
	let g:tcomment_types = {}
endif
let g:tcomment_types['purescript'] = '-- %s'
" ---------------------------------
" Mustache
" ---------------------------------
let g:mustache_abbreviations = 1
" ---------------------------------
" for Dash app
" ---------------------------------
function! s:dash(...)
  let word = len(a:000) == 0 ? input('Dash search: ') : a:1
  call system(printf("open dash://'%s'", word))
endfunction
command! -nargs=? Dash call <SID>dash(<f-args>)
nnoremap <leader>dash :<C-u>Dash<Space><C-r><C-w><Enter>
" ---------------------------------
" wauto.vim
" ---------------------------------
let g:auto_write = 1
" ---------------------------------
" ctrlp.vim
" ---------------------------------
let g:ctrlp_custom_ignore = {'dir':  '\v[\/]dist'}
" ---------------------------------
" Ag
" ---------------------------------
" カーソル下の単語をAgする
nnoremap <leader>/ :<C-u>Ag!<Space>--hidden<Space>
nnoremap <leader>* :<C-u>Ag!<Space>--hidden<Space>-w<Space><C-r><C-w><Enter>
nnoremap <leader>n :<C-u>AgFromSearch!<Space>--hidden<Enter>
" ---------------------------------
" The NERD Tree
" ---------------------------------
let NERDTreeShowHidden = 1
nnoremap <leader>. :<C-u>NERDTreeToggle<CR>
" ---------------------------------
"  quickrun.vim
" ---------------------------------
let g:quickrun_config = {
            \ '*' : {'split' : ''},
            \ 'd' : {
                \ 'command' : 'rdmd',
                \ 'cmdopt' : '--main -unittest',
                \ 'tempfile': '%{tempname()}.d',
                \ },
            \ 'coq' : {
                \ 'command' : 'coqc',
                \ 'cmdopt' : '-batch'
                \}
            \ }
let g:quickrun_config._ = {
            \ 'runner' : 'vimproc',
            \ 'outputter' : 'quickfix',
            \ }
" ---------------------------------
"  VimClojure
" ---------------------------------
let g:vimclojure#ParenRainbow = 1
" ---------------------------------
"  rainbow_parentheses.vim
" ---------------------------------
au VimEnter *.clj RainbowParenthesesToggle
au Syntax *.clj RainbowParenthesesRound
au Syntax *.clj RainbowParenthesesLoadSquare
au Syntax *.clj RainbowParenthesesLoadBraces
" ---------------------------------
"  Syntastic
" ---------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = { 'mode': 'passive',
                           \ 'active_filetypes': ['java', 'c', 'd', 'cpp', 'puppet', 'javascript', 'ocaml', 'ruby', 'rust'],
                           \ 'passive_filetypes': [] }
let g:syntastic_ruby_checkers = ['mri']
let g:syntastic_ocaml_checkers = ['merlin']
" ---------------------------------
"  vim-flake8 (python)
" ---------------------------------
autocmd BufWritePost *.py call Flake8()
" ---------------------------------
"  Tagbar
" ---------------------------------
nnoremap <silent> <leader>t :TagbarToggle<CR>
let g:tagbar_type_scala = {
    \ 'ctagstype' : 'Scala',
    \ 'kinds'     : [
        \ 'p:packages:1',
        \ 'V:values',
        \ 'v:variables',
        \ 'T:types',
        \ 't:traits',
        \ 'o:objects',
        \ 'a:aclasses',
        \ 'c:classes',
        \ 'r:cclasses',
        \ 'm:methods'
    \ ]
\ }
" ---------------------------------
"  vim-colors-solarized
" ---------------------------------
syntax enable
" solarized options
" let g:solarized_termcolors = 256
" let g:solarized_visibility = "high"
" let g:solarized_contrast = "high"
" let g:solarized_termtrans = 1
if has('gui_running')
  set background=light
else
  set background=dark
endif
try
  colorscheme solarized
catch
endtry
" ---------------------------------
"  vim-powerline
" ---------------------------------
let g:Powerline_symbols = 'fancy'
" ---------------------------------
"  vim-easy-align
" ---------------------------------
vnoremap <silent> <Enter> :EasyAlign<CR>
" ---------------------------------
"  vim-gitgutter
" ---------------------------------
nnoremap <silent> <leader>gg :<C-u>GitGutterToggle<CR>
nnoremap <silent> <leader>gh :<C-u>GitGutterLineHighlightsToggle<CR>
" ---------------------------------
"  unite.vim
" ---------------------------------
let g:unite_source_history_yank_enable = 1
try
  call unite#filters#matcher_default#use(['matcher_fuzzy'])
  call unite#filters#sorter_default#use(['sorter_length'])
catch
endtry

" The prefix key.
nnoremap    [unite]   <Nop>
nmap    <leader> [unite]

nnoremap <silent> [unite]r <Plug>(unite_restart) " uniteのキャッシュをリセットする
nnoremap <silent> [unite]p  :<C-u>Unite history/yank<CR>
nnoremap <silent> [unite]a  :<C-u>UniteWithCurrentDir -direction=topleft -buffer-name=files buffer file_mru bookmark file<CR>
nnoremap <silent> [unite]u  :<C-u>Unite -direction=topleft buffer file_mru<CR>
nnoremap <silent> [unite]f  :<C-u>Unite -direction=topleft -buffer-name=files file_rec/async:!<CR>
nnoremap <silent> [unite]b  :<C-u>Unite -direction=topleft buffer<CR>
nnoremap <silent> [unite]d  :<C-u>Unite -buffer-name=files -default-action=lcd directory_mru<CR>
nnoremap <silent> [unite]r  :<C-u>Unite -buffer-name=register register<CR>
nnoremap <silent> [unite]o  :<C-u>Unite outline<CR>
nnoremap <silent> [unite]<TAB>  :<C-u>Unite -direction=topleft -immediately tab<CR>
" nnoremap <silent> [unite]m  :<C-u>Unite -direction=topleft file_mru<CR>
" nnoremap <silent> [unite]d  :<C-u>UniteWithCurrentDir -direction=topleft file<CR>

" nnoremap <silent> [unite]c  :<C-u>UniteWithCurrentDir -buffer-name=files buffer file_mru bookmark file<CR>
" nnoremap <silent> [unite]b  :<C-u>UniteWithBufferDir -buffer-name=files -prompt=%\  buffer file_mru bookmark file<CR>
" nnoremap <silent> [unite]f  :<C-u>Unite -buffer-name=resume resume<CR>
" nnoremap <silent> [unite]ma :<C-u>Unite mapping<CR>
" nnoremap <silent> [unite]me :<C-u>Unite output:message<CR>
" nnoremap  [unite]f  :<C-u>Unite source<CR>

" nnoremap <silent> [unite]s  :<C-u>Unite -buffer-name=files -no-split jump_point file_point buffer_tab file_rec:! file file/new file_mru<CR>

" Start insert.
let g:unite_enable_start_insert = 1
"let g:unite_enable_short_source_names = 1

autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()"{{{
  " Overwrite settings.

  nmap <buffer> <ESC>      <Plug>(unite_exit)
  nmap <buffer> <ESC><ESC> <Plug>(unite_exit)
  imap <buffer> jj      <Plug>(unite_insert_leave)
  "imap <buffer> <C-w>     <Plug>(unite_delete_backward_path)

  " ウィンドウを分割して開く
  nnoremap <silent> <buffer> <expr> <C-l> unite#do_action('split')
  inoremap <silent> <buffer> <expr> <C-l> unite#do_action('split')

  " ウィンドウを縦に分割して開く
  nnoremap <silent> <buffer> <expr> <C-v> unite#do_action('vsplit')
  inoremap <silent> <buffer> <expr> <C-v> unite#do_action('vsplit')

  imap <buffer><expr> j unite#smart_map('j', '')
  imap <buffer> <TAB>   <Plug>(unite_select_next_line)
  imap <buffer> <C-w>     <Plug>(unite_delete_backward_path)
  imap <buffer> '     <Plug>(unite_quick_match_default_action)
  nmap <buffer> '     <Plug>(unite_quick_match_default_action)
  imap <buffer><expr> x unite#smart_map('x', "\<Plug>(unite_quick_match_choose_action)")
  nmap <buffer> x     <Plug>(unite_quick_match_choose_action)
  nmap <buffer> <C-z>     <Plug>(unite_toggle_transpose_window)
  imap <buffer> <C-z>     <Plug>(unite_toggle_transpose_window)
  imap <buffer> <C-y>     <Plug>(unite_narrowing_path)
  nmap <buffer> <C-y>     <Plug>(unite_narrowing_path)
  nmap <buffer> <C-j>     <Plug>(unite_toggle_auto_preview)
  nmap <buffer> <C-r>     <Plug>(unite_narrowing_input_history)
  imap <buffer> <C-r>     <Plug>(unite_narrowing_input_history)
  nnoremap <silent><buffer><expr> l unite#smart_map('l', unite#do_action('default'))

  let unite = unite#get_current_unite()
  if unite.buffer_name =~# '^search'
    nnoremap <silent><buffer><expr> r     unite#do_action('replace')
  else
    nnoremap <silent><buffer><expr> r     unite#do_action('rename')
  endif

  nnoremap <silent><buffer><expr> cd     unite#do_action('lcd')
  nnoremap <buffer><expr> S      unite#mappings#set_current_filters(
  \ empty(unite#mappings#get_current_filters()) ? ['sorter_reverse'] : [])
endfunction"}}}

let g:unite_source_file_mru_limit = 200
let g:unite_cursor_line_highlight = 'TabLineSel'
let g:unite_abbr_highlight = 'TabLine'

" For optimize.
let g:unite_source_file_mru_filename_format = ''

" if executable('jvgrep')
"   " For jvgrep.
"   let g:unite_source_grep_command = 'jvgrep'
"   let g:unite_source_grep_default_opts = '--exclude ''\.(git|svn|hg|bzr)'''
"   let g:unite_source_grep_recursive_opt = '-R'
" endif

" For ag.
if executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor --column --hidden'
  let g:unite_source_grep_recursive_opt = ''
  " let g:unite_source_grep_max_candidates = 200
endif

" ---------------------------------
"  Unite plugins
" ---------------------------------
cnoremap UO Unite outline<Enter>
nnoremap <silent> [unite]o :<C-u>Unite -no-split outline<CR>
cnoremap UH Unite help<Enter>
nnoremap <silent> [unite]h :<C-u>Unite -no-split help<CR>
" unite-haddock
nnoremap <silent> <leader>ha :<C-u>UniteWithCursorWord -direction=topleft -immediately haddock<CR>
" ghcmod-vim
nnoremap <silent> <leader>ho :<C-u>UniteWithCursorWord -direction=topleft -immediately hoogle<CR>
nnoremap <silent> <leader>ht :<C-u>GhcModType<CR>
nnoremap <silent> <leader>hc :<C-u>GhcModTypeClear<CR>
nnoremap <silent> <leader>hh :<C-u>GhcModTypeInsert<CR>
" ghcmod-vim (保存後に非同期でチェックをする)
autocmd BufWritePost *.hs GhcModCheckAsync
" unite-haskellimport
nnoremap <silent> <leader>hi :<C-u>UniteWithCursorWord -direction=topleft -immediately haskellimport<CR>
" unite-tag
" autocmd BufEnter *
" \   if empty(&buftype)
" \|      nnoremap <buffer> <C-]> :<C-u>UniteWithCursorWord -immediately tag<CR>
" \|  endif
" ---------------------------------
"  stylish-haskell
" ---------------------------------
nnoremap <silent> <leader>hs :<C-u>%!stylish-haskell<CR>
" ---------------------------------
"  vim2hs
" ---------------------------------
" let g:haskell_conceal_wide         = 1 " disabled by default
let g:haskell_conceal              = 0 " enabled by default
let g:haskell_conceal_enumerations = 0 " enabled by default
let g:haskell_quasi         = 0
let g:haskell_interpolation = 0
let g:haskell_regex         = 0
let g:haskell_jmacro        = 0
let g:haskell_shqq          = 0
let g:haskell_sql           = 0
let g:haskell_json          = 0
let g:haskell_xml           = 0
