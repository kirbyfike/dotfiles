"--------------------------------------------------------------------------------
"
"  BASICS
"
"--------------------------------------------------------------------------------

" Some room to breath
set linespace=2


" Fullscreen takes up entire screen
set fuoptions=maxhorz,maxvert

" Full screen with no scroll/toolbars
set guioptions-=L
set guioptions-=r
set guioptions-=T
" set fu
set lines=62

set guicursor=n-i-v-c:ver17-Cursor

syntax enable
set background=light
set t_Co=256

syntax enable
set background=light
colorscheme coda
"--------------------------------------------------------------------------------
"
"  KEY MAPPINGS
"
"--------------------------------------------------------------------------------

" Generally speaking, most plug-in specific key bindings are set
" in the plug-in section of the .vimrc, but some of them have
" to exist here instead

"---------------------------------------
"  Command-T
"---------------------------------------

macmenu &File.New\ Tab key=<D-T>
map <D-t> :CommandT<CR>
imap <D-t> <Esc>:CommandT<CR>

"---------------------------------------
"  Misc.
"---------------------------------------

" Adjust viewports to the same size
map <Leader>= <C-w>=
imap <Leader>= <Esc> <C-w>=
