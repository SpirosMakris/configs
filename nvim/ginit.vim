" set font
" https://github.com/equalsraf/neovim-qt/issues/213#issuecomment-266204953
" https://stackoverflow.com/questions/35285300/how-to-change-neovim-font/51424640#51424640
" https://www.reddit.com/r/neovim/comments/9n7sja/liga_source_code_pro_is_not_a_fixed_pitch_font/
let s:fontsize = 12
" GuiFont! Noto Sans Mono:h13
:execute "GuiFont! Noto Sans Mono:h" . s:fontsize

function! AdjustFontSize(amount)
  let s:fontsize = s:fontsize+a:amount
  ":execute "GuiFont! Consolas:h" . s:fontsize
  :execute "GuiFont! Noto Sans Mono:h" . s:fontsize
endfunction

" " Use mouse scroll wheel to change font size
noremap <C-ScrollWheelUp> :call AdjustFontSize(1)<CR>
noremap <C-ScrollWheelDown> :call AdjustFontSize(-1)<CR>
inoremap <C-ScrollWheelUp> <Esc>:call AdjustFontSize(1)<CR>a
inoremap <C-ScrollWheelDown> <Esc>:call AdjustFontSize(-1)<CR>a

" " In normal mode, pressing numpad's+ increases the font
noremap <kPlus> :call AdjustFontSize(1)<CR>
noremap <kMinus> :call AdjustFontSize(-1)<CR>

" " In insert mode, pressing ctrl + numpad's+ increases the font
inoremap <C-kPlus> <Esc>:call AdjustFontSize(1)<CR>a
inoremap <C-kMinus> <Esc>:call AdjustFontSize(-1)<CR>a