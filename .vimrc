scriptencoding utf-8

" general {{{
" --------------------------------------------------------------------------
filetype on
filetype plugin on
filetype indent on

"set verbose=9

set fileencodings=utf-8,latin1
set encoding=utf-8
set termencoding=utf-8

set fileformats=unix,dos,mac

set history=300
set nocompatible
set ttyfast
set lazyredraw

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
set cursorline
set number

set wildmenu
set wildignore+=*.o,*~,.lo

set list
set listchars=eol:¬,tab:→\ ,trail:~,extends:►,precedes:◄
"set nolist


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
syntax enable
set background=dark

if &term=="linux"
	set t_Co=16
	colorscheme vimbrant
else
	set t_Co=256
	colorscheme mmso_v2
	"colorscheme mmso_v4
endif


" }}}
" tabbing {{{
" --------------------------------------------------------------------------
set linebreak
set textwidth=80

let tabsize =4
execute "set tabstop=".tabsize
execute "set shiftwidth=".tabsize
execute "set softtabstop=".tabsize

set smarttab
set autoindent
set cindent


" }}}
" statusline {{{
" --------------------------------------------------------------------------
set laststatus=2

set statusline=
set statusline+=%2*%-3.3n%0*
set statusline+=%f\ 
set statusline+=%h%1*%m%r%w%0*

set statusline+=[%{strlen(&filetype)?&filetype:'nil'},%{&encoding},%{&fileformat}]

set statusline+=%{SyntasticStatuslineFlag()}

set statusline+=%=%<

set statusline+=%2*0x%-8B
set statusline+=%-8.(%l,%c%)\ %P


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

" common
nmap <leader>w :w!<CR>
nmap <leader>q :qall<CR>
nmap <leader>Q :qall!<CR>
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>t :TlistToggle<CR>
nmap <leader>s :Sscratch<cr>

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
" extra {{{
" --------------------------------------------------------------------------
let NERDTreeWinSize=20
let g:syntastic_auto_loc_list=1
