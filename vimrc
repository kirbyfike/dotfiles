"--------------------------------------------------------------------------------
"
"  BASICS
"
"--------------------------------------------------------------------------------

" Miscellany
set nocompatible
set number
set numberwidth=5
set ruler
set showcmd
set cursorline
set encoding=utf-8
set cmdheight=1
set hidden
set splitbelow " places cursor in new split
set splitright " places cursor in new split
set autoindent
set scrolloff=3
syntax on

" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set list listchars=tab:\ \ ,trail:·

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Enable filetype plugin
filetype plugin on
filetype indent on

" Auto completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,test/fixtures/*,vendor/gems/*
set ofu=syntaxcomplete#Complete

" Status bar
set laststatus=2

" Backspacing
set backspace=indent,eol,start

" MacVIM shift+arrow-keys behavior (required in .vimrc)
let macvim_hig_shift_movement = 1

" Turn backup off, since most stuff is in SVN, git anyway...
set nobackup
set nowb
set noswapfile

" Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup

" Folding
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use


"--------------------------------------------------------------------------------
"
"  AUTO COMMANDS
"
"--------------------------------------------------------------------------------

if has("autocmd")
  " Remember last location in file
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif


"--------------------------------------------------------------------------------
"
"  KEY MAPPINGS
"
"--------------------------------------------------------------------------------

" Custom leader
let mapleader = ','

" Easier moving in tabs and windows
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l
map <C-H> <C-W>h

" add vim-like movement while in insert mode by holding control
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

" add a keyboard shortcut to clear search
nnoremap <silent> <leader>/ :let @/ = ""<CR>

" Control-S to split the window vertically
nmap <C-S> <C-W>v

" Control-H to split the window vertically
"nmap <C-H> <C-W>s

" use the arrow keys to switch buffers
nmap <S-Right> :bnext<CR>
nmap <S-Left> :bprev<CR>

" shortcut to edit .vimrc
nmap <leader>v :edit $MYVIMRC<CR>

" Command-/ for comments
map <D-/> <Leader>c<Space>

" Use spacebar for search
map <Space> /
nnoremap <esc> :noh<return><esc>

" Use Control and arrow keys to indent
nmap <C-Right> >>
nmap <C-Left> <<

"-------------------------------------------------------------------------------
"
"  Environment Variables
"
"-------------------------------------------------------------------------------

"-------------------------------------------------------------------------------
"
"  Plugins (Vundle)
"
"-------------------------------------------------------------------------------

set rtp+=~/.vim/vundle/
call vundle#rc()

"---------------------------------------
"  Ack
"---------------------------------------

Bundle "ack.vim"

"---------------------------------------
"  Align
"---------------------------------------

Bundle "Align"

"---------------------------------------
"  Command-T
"---------------------------------------

Bundle "git://git.wincent.com/command-t.git"

" NOTE: don't forget to run rake make

" limit to 12 rows
let g:CommandTMaxHeight=12

" show window at top
"let g:CommandTMatchWindowAtTop=1

nmap <silent> <F12> :CommandT<CR>
nmap <silent> <F11> :CommandTBuffer<CR>

"---------------------------------------
"  Delimitmate
"---------------------------------------

Bundle "delimitMate.vim"

" do the needful with the cursor when
" pressing return between delimiters
let delimitMate_expand_cr=1
let delimitMate_expand_space=1

"---------------------------------------
"  Diff Changes
"---------------------------------------

Bundle "diffchanges.vim"


"---------------------------------------
"  Fugitive
"---------------------------------------

Bundle "fugitive.vim"

"---------------------------------------
"  Gundo
"---------------------------------------

Bundle "Gundo"

nmap <silent> <F7> :GundoToggle<CR>
let g:gundo_right = 1

"---------------------------------------
"  Haml
"---------------------------------------

Bundle "Haml"

"---------------------------------------
"  HTML5 (omnicomplete)
"---------------------------------------

" Bundle "git://github.com/othree/html5.vim.git"

"---------------------------------------
"  HTML5 Syntax
"---------------------------------------

Bundle "git://github.com/othree/html5-syntax.vim.git"

"---------------------------------------
"  HTML-AutoCloseTag
"---------------------------------------

" currently disabled because it conflicts
" with delmiteMate
"Bundle "HTML-AutoCloseTag"

"---------------------------------------
"  IndexedSearch
"---------------------------------------

Bundle "git://github.comvim-scripts/IndexedSearch.git"

"---------------------------------------
"  Javascript Indent
"---------------------------------------

Bundle "git://github.com/cawinkelmann/vim-web-indent.git"

"---------------------------------------
"  MatchIt
"---------------------------------------

Bundle "matchit.zip"

"---------------------------------------
"  NERDTree
"---------------------------------------

Bundle "The-NERD-tree"

nnoremap <leader>n :NERDTreeToggle<CR>
let g:NERDTreeQuitOnOpen=1
let g:NERDTreeChDirMode=2
let g:NERDTreeShowBookmarks=1

nnoremap <silent> <F2> :NERDTreeToggle<CR>
nnoremap <silent> <F3> :NERDTreeFind<CR>

"---------------------------------------
"  NERDCommenter
"---------------------------------------

Bundle "The-NERD-Commenter"

"---------------------------------------
"  MRU
"---------------------------------------

" Bundle "MRU"

"---------------------------------------
"  RagTag
"---------------------------------------

Bundle "ragtag.vim"

"---------------------------------------
"  Rails
"---------------------------------------

Bundle "rails.vim"

"---------------------------------------
"  Repeat
"---------------------------------------

Bundle "repeat.vim"

"---------------------------------------
"  SnipMate
"---------------------------------------

Bundle "snipMate"

"---------------------------------------
"  SnipMate-Snippets
"---------------------------------------

Bundle "https://github.com/scrooloose/snipmate-snippets.git"

" NOTE: don't forget to run rake deploy_local
" to install these into the snipMate directory

"---------------------------------------
"  Solarized Color Scheme (customized)
"---------------------------------------

Bundle "git://github.com/altercation/vim-colors-solarized.git"
color solarized
set background=dark

"---------------------------------------
"  SuperTab
"---------------------------------------

Bundle "SuperTab-continued."

" make super tab use omnicomplete
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

" configure to avoid conflict with <CR> in delimitmate
let g:SuperTabCrMapping = 0
inoremap <expr> <Esc> pumvisible() ? "\<C-e>" : "\<Esc>"
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-R>=delimitMate#ExpandReturn()\<CR>"


"---------------------------------------
"  Surround
"---------------------------------------

Bundle "surround.vim"

"---------------------------------------
"  Unimpaired
"---------------------------------------

Bundle "unimpaired.vim"

" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e

" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv

" add line before or after with enter, shift-enter
nmap <CR> ]<Space>j
nmap <S-CR> [<Space>k
inoremap <C-CR> <ESC>o
inoremap <C-S-CR> <ESC>O

"---------------------------------------
"  vim-jst
"---------------------------------------

Bundle "https://github.com/pangloss/vim-javascript.git"
Bundle "https://github.com/briancollins/vim-jst.git"

"---------------------------------------
"  Yankring
"---------------------------------------

Bundle 'YankRing.vim'

nnoremap <silent> <F6> :YRShow<CR>
let g:yankring_history_file = '.yankring_history'
