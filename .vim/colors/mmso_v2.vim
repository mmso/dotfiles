"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" dark vim color theme
" Author: Mattias Svanström <mattias@svanstrom.nu>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi clear
syntax reset


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" normal window
" the character under the cursor
" directory names (and other special names in listings)
"
" error messages on the command line
"
" line numbers
" the column separating vertically split windows
"
" yes/no questions
" last search pattern highlighting
" text replaced with ":s///c"
"
" line used for closed folds
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi normal		ctermfg=253		ctermbg=232
hi cursor		ctermfg=253		ctermbg=57		cterm=none
hi directory	ctermfg=253		ctermbg=57		cterm=none

hi question		ctermfg=81						cterm=none
hi errormsg		ctermfg=160		ctermbg=245		cterm=none

hi linenr		ctermfg=8		ctermbg=0		cterm=none
hi vertsplit	ctermfg=235		ctermbg=235		cterm=none
hi matchparen					ctermbg=none	cterm=bold

hi search		ctermfg=0		ctermbg=248		cterm=bold
hi incsearch	ctermfg=193		ctermbg=16

hi folded		ctermfg=67		ctermbg=16
hi foldcolumn	ctermfg=67		ctermbg=16


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" the screen line that the cursor is in
" visual mode selection
" visual mode selection when vim is "Not Owning the Selection"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi cursor		ctermfg=234		ctermbg=208		cterm=none
hi cursorline	ctermfg=none	ctermbg=233		cterm=none
hi visual						ctermbg=233
hi visualnos					ctermbg=238		cterm=none


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" status line of current window
" status line user highlights
" ..
" status lines of not-current windows
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi statusline	ctermfg=0		ctermbg=208		cterm=none"
hi user1		ctermfg=0		ctermbg=208		cterm=none"
hi user2		ctermfg=0		ctermbg=208		cterm=none"
hi statuslinenc ctermfg=239		ctermbg=235		cterm=none


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" '~' and '@' at the end of the window
" meta and special keys listed with ":map", also for text used
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi nontext		ctermfg=233		ctermbg=none
hi specialkey	ctermfg=233		ctermbg=none


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" any constant
" a string constant
" a character constant: 'c', '\n'
" a number constant: 234, 0xff
" a boolean constant: TRUE, false
" a floating point constant: 2.3e10
"
" any variable name
" function name (also: methods for classes)
"
" any comment
"
" preprocessor #define
" preprocessor #if, #else, #endif, etc.
" generic preprocessor
"
" int, long, char, etc.
" a typedef
" struct, union, enum, etc.
" static, register, volatile, etc.
"
" any special symbol
" character that needs attention
" debugging statements
"
" case, default, etc.
"
" left blank, hidden
"
" any erroneous construct
"
" keywords TODO FIXME and XXX
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi constant		ctermfg=135						cterm=bold
hi string		ctermfg=243		ctermbg=none	cterm=bold
hi character	ctermfg=144
hi number		ctermfg=134
hi boolean		ctermfg=134
hi float		ctermfg=134

hi identifier	ctermfg=208						cterm=bold
hi function		ctermfg=118

hi comment		ctermfg=59

hi macro		ctermfg=193
hi precondit	ctermfg=118						cterm=bold
hi preproc		ctermfg=118

hi type			ctermfg=253		ctermbg=57		cterm=bold
hi typedef		ctermfg=253		ctermbg=57		cterm=bold
hi structure	ctermfg=253		ctermbg=57		cterm=bold
hi storageclass ctermfg=208

hi special		ctermfg=81
hi delimiter	ctermfg=241
hi debug		ctermfg=225						cterm=bold

hi label		ctermfg=229						cterm=bold

hi ignore		ctermfg=244		ctermbg=232

hi error		ctermfg=255		ctermbg=124

hi todo			ctermfg=0		ctermbg=81


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" popup menu: normal item
" popup menu: selected item
" popup menu: scrollbar
" popup menu: thumb of the scrollbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi pmenu		ctermfg=255		ctermbg=0
hi pmenusel		ctermfg=0		ctermbg=255
hi pmenusbar					ctermbg=0
hi pmenuthumb	ctermfg=255


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tab pages line, not active tab page label
" tab pages line, where there are no labels
" tab pages line, active tab page label
" titles for output from ":set all", ":autocmd" etc.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi tabline		ctermfg=245		ctermbg=none	cterm=none
hi tablinefill					ctermbg=none	cterm=none
hi tablinesel	ctermfg=208		ctermbg=none	cterm=bold
hi title		ctermfg=208


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" any statement
" if, then, else, endif, switch, etc.
" for, do, while, etc.
" sizeof, +, *, etc.
" any other keyword
" try, catch, throw
" special character in a constant
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let cokrss = 208
execute "hi statement	ctermfg=".cokrss."		cterm=bold"
execute "hi conditional ctermfg=".cokrss."		cterm=bold"
execute "hi repeat		ctermfg=".cokrss."		cterm=bold"
execute "hi operator	ctermfg=".cokrss."		cterm=bold"
execute "hi keyword		ctermfg=".cokrss."		cterm=bold"
execute "hi exception	ctermfg=".cokrss."		cterm=bold"
execute "hi specialchar	ctermfg=".cokrss."		cterm=bold"
