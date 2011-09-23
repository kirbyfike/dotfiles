"--------------------------------------------------------------------------------
"
"  BASICS
"
"--------------------------------------------------------------------------------

" Some room to breath
set linespace=2

" GUI Font
set gfn=Nitti\ WM2\ Light:h13

" Fullscreen takes up entire screen
set fuoptions=maxhorz,maxvert

" Full screen with no scroll/toolbars
set guioptions-=L
set guioptions-=r
set guioptions-=T
" set fu
set lines=62

color solarized

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
