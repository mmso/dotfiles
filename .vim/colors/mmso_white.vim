"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" light vim color theme
" Author: Mattias Svanström <mattias@svanstrom.nu>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set background=light
hi clear
syntax reset

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"random
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi normal		ctermfg=16	ctermbg=none
hi linenr		ctermfg=16	ctermbg=none	cterm=none
hi vertsplit	ctermfg=16	ctermbg=none	cterm=none
hi matchparen				ctermbg=none	cterm=bold
hi folded		ctermfg=16	ctermbg=252
hi foldcolumn	ctermfg=16	ctermbg=252

hi directory	ctermfg=231	ctermbg=16		cterm=none

hi search		ctermfg=255	ctermbg=1		cterm=none		term=reverse
hi incsearch	ctermfg=255	ctermbg=1		cterm=reverse	term=reverse

hi question		ctermfg=16					cterm=none
hi errormsg		ctermfg=1	ctermbg=none	cterm=none

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"tab
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi tabline		ctermfg=231	ctermbg=16		cterm=none
hi tablinefill				ctermbg=16		cterm=none
hi tablinesel	ctermfg=16	ctermbg=231		cterm=bold
hi title		ctermfg=16


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"ui
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi cursor		ctermfg=16	ctermbg=none	cterm=none
hi cursorline				ctermbg=255		cterm=none
hi visual		ctermfg=16	ctermbg=255
hi visualnos				ctermbg=none	cterm=none

hi statusline	ctermfg=231	ctermbg=16		cterm=none
hi link			user1			statusline
hi link			user2			statusline
hi statuslinenc	ctermfg=231	ctermbg=16		cterm=none
hi wildmenu		ctermfg=231	ctermbg=16		cterm=none

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"syntax
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi comment		ctermfg=245					cterm=italic

hi constant			ctermfg=4					cterm=bold
	hi string		ctermfg=1	ctermbg=none	cterm=bold
	hi character	ctermfg=1
	hi number		ctermfg=4
	"hi link			float						number
	"hi link			boolean						number

hi identifier		ctermfg=4	ctermbg=none	cterm=bold
	hi function		ctermfg=16	ctermbg=none

hi statement		ctermfg=6	ctermbg=none	cterm=bold
	hi conditional	ctermfg=16	ctermbg=none	cterm=bold
	hi link			repeat						conditional
	hi link			operator					statement
	hi link			label						statement
	hi link			keyword						statement
	hi exception	ctermfg=88					cterm=bold

hi preproc			ctermfg=245	ctermbg=none
	hi link			include				preproc
	hi define		ctermfg=16
	hi link			macro				preproc
	hi link			precondit			preproc

hi type				ctermfg=16	ctermbg=none	cterm=bold
	hi typedef		ctermfg=16	ctermbg=none	cterm=bold
	hi link			structure			typedef
	hi link			storageclass		typedef


hi special			ctermfg=161
hi specialchar		ctermfg=161
	hi delimiter	ctermfg=161
	hi debug		ctermfg=124					cterm=bold
	hi specialcomment ctermfg=246

hi underlined		ctermfg=16

hi ignore		ctermfg=16	ctermbg=none

hi error						ctermbg=1	ctermbg=none

hi todo							ctermbg=16	ctermbg=none

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"popup
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi nontext		ctermfg=252	ctermbg=none
hi specialkey	ctermfg=252	ctermbg=none


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"popup
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi pmenu		ctermfg=16	ctermbg=none
hi pmenusel		ctermfg=16	ctermbg=231	cterm=reverse
hi pmenusbar				ctermbg=none
hi pmenuthumb	ctermfg=16

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"specials
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
hi link			mytaglistfilename		conditional
hi link			treedirslash			directory
