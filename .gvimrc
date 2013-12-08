if has('gui_macvim')
  set guifont=Ricty:h14
  " set antialias

  set imdisable

  set transparency=10

  set background=light
  " set background=dark

  colorscheme solarized

  " http://blog.conafie.jp/2011/05/bashzsh-vim.html
  function! s:pushEnv(shname)
    if a:shname == 'bash'
      let l:envs = split(system('bash -c "source ~/.bashrc; source ~/.bash_profile; export"'))
    elseif a:shname == 'zsh'
      " let l:envs = split(system('zsh -c "source ~/.zshrc; source ~/.zshenv; export"'))
      let l:envs = split(system('zsh -c "source ~/.zsh/path.zsh; export"'))
    else
      return
    endif

    for l:env in l:envs
      unlet! l:envkeyval
      unlet! l:envkey
      unlet! l:envval
      let l:envkeyval = split(l:env, '=')
      let l:envkey = l:envkeyval[0]
      unlet l:envkeyval[0]
      let l:envval = join(l:envkeyval, '=')

      execute 'let $' . l:envkey . '="' . l:envval . '"'
    endfor
  endfunction
  call s:pushEnv('zsh')

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
