" Vim filetype plugin to run the current file in praat
" Last Change: 2015-02-20
" Maintainer: Mart Lubbers <mart@martlubbers.net>
" Licence: Beerware

" Prevent duplicate loading
if exists("b:did_praatftp")
	finish
endif
let b:did_praatftp = 1

" Function to run the current file in praat using sendpraat
if !exists("*RunInPraat")
	function RunInPraat(...)
		let s:timeout = a:0 >= 1 ? a:1 : 0                                           
		let s:program = a:0 >= 2 ? a:2 : 'praat'
		write
		let s:msg = join(['runScript: "', expand('%:p'), '"'], "")
		call Sendpraat([s:msg], s:timeout, s:program)
	endfunction
endif
