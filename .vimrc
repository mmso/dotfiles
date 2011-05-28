scriptencoding utf-8

" general {{{
" --------------------------------------------------------------------------
filetype plugin indent on

"set verbose=9
set nocompatible

set encoding=utf-8
set termencoding=utf-8

set fileencodings=utf-8,latin1
set fileformats=unix,dos,mac

set history=300

set backup
set backupdir=$HOME/.vim/backup

set undofile
set undodir=$HOME/.vim/undo

set backspace=eol,start,indent
set whichwrap+=<,>,[,]
set foldmethod=marker

set virtualedit=block,onemore


" }}}
" ui {{{
" --------------------------------------------------------------------------
set showcmd
set showmode
set cursorline
set number

set previewheight=5

set wildmenu
set wildchar=<tab>
set wildmode=longest:full,full
set wildignore+=*.o,*~,.lo

set list
set listchars=eol:¬,tab:→\ ,trail:~,extends:►,precedes:◄
set nolist


" }}}
" search {{{
" --------------------------------------------------------------------------
set hlsearch
set incsearch
set showmatch
set ignorecase
set smartcase
set wrapscan


" }}}
" sound {{{
" --------------------------------------------------------------------------
set noerrorbells
set visualbell t_vb=


" }}}
" colortheme {{{
" --------------------------------------------------------------------------
syntax on

if &term=="linux"
	set t_Co=16
	colorscheme vimbrant
else
	set t_Co=256
	colorscheme mmso_white_v2
	"colorscheme github
	"colorscheme eclipse
endif

" }}}
" tabbing {{{
" --------------------------------------------------------------------------
set linebreak
set textwidth=0

set tabstop=4
set softtabstop=4
set shiftwidth=4

set smarttab
set autoindent


" }}}
" statusline {{{
" --------------------------------------------------------------------------
set laststatus=2

let s1="%3.3n\\ %f\\ %h%m%r%w"
let s2="[%{strlen(&filetype)?&filetype:'?'},\\ %{&encoding},\\ %{&fileformat}]"
let s3="%=\\ 0x%-8B\\ \\ %-14.(%l,%c%V%)\\ %<%P"
execute "set statusline=" . s1 . s2 . s3


" }}}
" mouse {{{
" --------------------------------------------------------------------------
if has('mouse')
	set mouse=a
endif


" }}}
" bindings {{{
" --------------------------------------------------------------------------
let mapleader = ","

" escape
imap jj <ESC>
imap ,, <ESC>

" no manual
nmap <S-k> <nop>
nmap <S-j> <nop>

" common
nmap <leader>w :w!<CR>
nmap <leader>q :qall<CR>
nmap <leader>Q :qall!<CR>
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>t :TlistToggle<CR>
nmap <leader>s :Sscratch<cr>
nmap <leader>p :YRShow<cr>

" not so common
map <F3> :set paste! paste?<CR>
map <F4> :set hlsearch! hlsearch?<CR>
map <F5> :SessionList<CR>
map <F6> :SessionSave<CR>
map <F7> :SessionClose<CR>

" alt + movement change window
nmap h <C-W>h
nmap l <C-W>l
nmap k <C-W>k
nmap j <C-W>j

" alt + <0..9> change tab
for i in range(0,9)
	execute "map ".i." ".i."gt"
endfor

" strip whitespace at eol
nmap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
" sort css items alphabetically
nmap <leader>S :g#\({\n\)\@<=#.,/}/sort<CR>


" }}}
" haxx {{{
" --------------------------------------------------------------------------
function! s:init()
	if exists("g:loaded_less") && g:loaded_less
		set mouse=a
		set nolist
		set nofoldenable
	elseif argc() == 1 && filereadable($HOME.'/.vim/sessions/'.argv(0))
		execute 'SessionOpen '. argv(0)
	endif
endfun


" allows to open vim with a project name as argument to open that session
autocmd vimenter * :call s:init()


" }}}
" lang {{{
" --------------------------------------------------------------------------
au FileType python setlocal tabexpand shiftwidth=4 tabstop=4
au FileType html setlocal tabstop=2 shiftwidth=2 softtabstop=2

" }}}
" extra {{{
" --------------------------------------------------------------------------
let NERDTreeWinSize=20
let g:syntastic_auto_loc_list=1
let g:yankring_paste_check_default_buffer=1
let g:yankring_history_dir='$HOME/.vim/'

map <buffer> <silent> p :YRShow<cr>:YRShow<cr>:YRGetElem 1<cr>


if has('gui_running')
    set guioptions-=T   " Get rid of toolbar "
    set guioptions-=m   " Get rid of menu    "
set guioptions+=b
endif

