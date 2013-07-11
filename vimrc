filetype plugin indent on

execute pathogen#infect()
syntax on
filetype plugin indent on

" set the paste key (from an outside source ie chrome)
noremap <Tab>pp	:set paste<CR>

set number
set cmdheight=2

set runtimepath+=~/.vim/bundle/vundle
set runtimepath+=~/.vim/bundle/ctrlp.vim

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " Linux/MacOSX

call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'majutsushi/tagbar'
Bundle 'ervandew/supertab'

" set the font 
set guifont=DejaVu\ Sans\ Mono\ 9 " set the tab width to 2
set tabstop=2
set shiftwidth=2
set expandtab

let mapleader = ","
nnoremap <Leader>. :CtrlP<CR>
nnoremap <Leader>, :CtrlPClearCache<CR>
nnoremap <Leader>tbt :TagbarToggle<CR>


map <C-s> <esc>:w<CR>
imap <C-s> <esc>:w<CR>
map <C-t> <esc>:tabnew<CR>
imap jj <esc>

set guioptions-=m  "remove menu bar
set guioptions-=T "remove toolbar

autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

