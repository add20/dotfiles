if has('gui_macvim')
  set guifont=Ricty\ Regular:h14
  " set antialias

  set imdisable

  " set transparency=10

  set background=light
  " set background=dark

  colorscheme solarized

  " gVim で前回終了時のウィンドウの位置とサイズを記憶する
  " http://vim-users.jp/2010/01/hack120/
  let g:save_window_file = expand('~/.vimwinpos')
  augroup SaveWindow
    autocmd!
    autocmd VimLeavePre * call s:save_window()
    function! s:save_window()
      let options = [
        \ 'set columns=' . &columns,
        \ 'set lines=' . &lines,
        \ 'winpos ' . getwinposx() . ' ' . getwinposy(),
        \ ]
      call writefile(options, g:save_window_file)
    endfunction
  augroup END

  if filereadable(g:save_window_file)
    execute 'source' g:save_window_file
  endif
endif
