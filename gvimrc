" set the paste key (from an outside source ie chrome)
noremap <Tab>pp	:set paste<CR>

" set the font
set guifont=DejaVu\ Sans\ Mono\ 9

" set the cursor
set guicursor=n-v-c:ver10-Cursor
set guicursor+=i:ver10-Cursor


syntax enable
set background=light
colorscheme solarized

:imap jj <Esc>
:set guioptions-=m  "remove menu bar
:set guioptions-=T "remove toolbar
