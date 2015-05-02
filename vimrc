"======== Settings =========="
syntax enable
set number
"indent with two spaces
filetype plugin indent on
set tabstop=2 shiftwidth=2 expandtab
set sw=2
"highlight what we search
set hlsearch
let mapleader = ','

set cursorline
hi CursorLine ctermbg=8 ctermfg=15 "8 = dark grey, 15 = white
hi Cursor ctermbg=15 ctermfg=8
" Default clipboard to "+
" This is glitchy on OS X unless 'unnamed' is also included
set clipboard=unnamedplus,unnamed,exclude:cons\|linux
"TEMP files/swap files 
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
"======== Color Scheme =========="
 
colorscheme atom_dark
"======== pathogen manages plugins  =========="
 
set runtimepath^=~/.vim/bundle/ctrlp.vim
 
execute pathogen#infect()
 
"======== Custom Mappings  =========="
 
source ~/.vim/startup/mappings.vim
"========= javascript ======="
"

  map <c-f> :call JsBeautify()<cr>
  " or
  autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
  " for html
  autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
  " for css or scss
  autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
