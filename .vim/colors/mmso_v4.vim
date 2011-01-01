"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" light vim color theme
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
hi normal		ctermfg=16	ctermbg=231
hi directory	ctermfg=231	ctermbg=16		cterm=none

hi question		ctermfg=16					cterm=none
hi errormsg		ctermfg=16	ctermbg=none	cterm=none

hi linenr		ctermfg=16	ctermbg=none	cterm=none
hi vertsplit	ctermfg=16	ctermbg=none	cterm=none
hi matchparen				ctermbg=none	cterm=bold

hi search		ctermfg=16	ctermbg=none	cterm=bold,reverse
hi incsearch	ctermfg=16	ctermbg=none

hi folded		ctermfg=16	ctermbg=none
hi foldcolumn	ctermfg=16	ctermbg=none


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" the screen line that the cursor is in
" visual mode selection
" visual mode selection when vim is "Not Owning the Selection"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi cursor		ctermfg=16	ctermbg=none	cterm=none
hi cursorline	ctermfg=16	ctermbg=255		cterm=none
hi visual		ctermfg=16	ctermbg=255
hi visualnos				ctermbg=none	cterm=none


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" status line of current window
" status line user highlights
" ..
" status lines of not-current windows
" current match in 'wildmenu' completion 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi statusline	ctermfg=231	ctermbg=16		cterm=none
hi user1		ctermfg=231	ctermbg=16		cterm=none
hi user2		ctermfg=231	ctermbg=16		cterm=none
hi statuslinenc ctermfg=231	ctermbg=16		cterm=none
hi wildmenu		ctermfg=16	ctermbg=231		cterm=none


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" '~' and '@' at the end of the window
" meta and special keys listed with ":map", also for text used
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi nontext		ctermfg=252	ctermbg=none
hi specialkey	ctermfg=252	ctermbg=none


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
hi constant		ctermfg=16					cterm=bold
hi string		ctermfg=16	ctermbg=none	cterm=bold
hi character	ctermfg=16
hi number		ctermfg=16
hi link			float						number
hi link			boolean						number

hi identifier	ctermfg=16	ctermbg=none	cterm=bold
hi function		ctermfg=16	ctermbg=none

hi comment		ctermfg=239					cterm=italic

hi macro		ctermfg=16	ctermbg=none
hi precondit	ctermfg=16	ctermbg=none	cterm=bold
hi preproc		ctermfg=16	ctermbg=none

hi type			ctermfg=16	ctermbg=none	cterm=bold
hi typedef		ctermfg=16	ctermbg=none	cterm=bold
hi structure	ctermfg=16	ctermbg=none	cterm=bold
hi storageclass ctermfg=16	ctermbg=none

hi special		ctermfg=16
hi delimiter	ctermfg=16
hi debug		ctermfg=16					cterm=bold

hi label		ctermfg=16					cterm=bold

hi ignore		ctermfg=16	ctermbg=none

hi error		ctermfg=16	ctermbg=none

hi todo			ctermfg=16	ctermbg=none


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" popup menu: normal item
" popup menu: selected item
" popup menu: scrollbar
" popup menu: thumb of the scrollbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi pmenu		ctermfg=16	ctermbg=none
hi pmenusel		ctermfg=16	ctermbg=231	cterm=reverse
hi pmenusbar				ctermbg=none
hi pmenuthumb	ctermfg=16


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tab pages line, not active tab page label
" tab pages line, where there are no labels
" tab pages line, active tab page label
" titles for output from ":set all", ":autocmd" etc.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi tabline		ctermfg=231	ctermbg=16		cterm=none
hi tablinefill				ctermbg=16		cterm=none
hi tablinesel	ctermfg=16	ctermbg=231		cterm=bold
hi title		ctermfg=16


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" any statement
" if, then, else, endif, switch, etc.
" for, do, while, etc.
" sizeof, +, *, etc.
" any other keyword
" try, catch, throw
" special character in a constant
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi statement	ctermfg=16	ctermbg=none	cterm=bold
hi conditional	ctermfg=231	ctermbg=16		cterm=none
hi link			repeat						conditional
hi link			operator					statement
hi link			keyword						statement
hi link			exception					statement
hi link			specialchar					statement


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" specials
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi link			mytaglistfilename		conditional
hi link			treedirslash			directory
