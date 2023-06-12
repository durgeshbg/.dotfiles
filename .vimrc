set nocompatible
set relativenumber
syntax enable
filetype plugin on

let mapleader = " " 

inoremap jj <Esc>

nnoremap o o<Esc>
nnoremap O O<Esc>
nnoremap <leader>f :Ex<CR>
nnoremap <leader>; :

set path+=**
set wildmenu

let g:netrw_banner=0 "disable annoying banner
let g:netrw_browse_split=4 "open in prior window
let g:netrw_altv=1 "open splits to right
let g:netrw_liststyle=3 "tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+' 


