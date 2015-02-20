" Vim global plugin for using sendpraat
" Last change: 2015-02-20
" Maintainer: Mart Lubbers <mart@marlubbers.net>
" License: Beerware

" Prevent duplicate loading
if exists("g:sendpraat_version")
	finish
endif
let g:sendpraat_version="0.1"

" Check for custom sendpraat path
if !exists("g:sendpraat_path")
	let g:sendpraat_path = "sendpraat"
endif

" Function to send a list of commands to a Praat instance
function! Sendpraat(...)
	let s:message = a:0 >= 1 ? a:1 : ['writeInfoLine: "Hello World"']
	let s:timeout = a:0 >= 2 ? a:2 : 0
	let s:program = a:0 >= 3 ? a:3 : 'praat'
	let s:commands = [g:sendpraat_path, s:timeout, s:program]
	for i in range(0, len(s:message)-1)
		let s:newmsg = substitute(s:message[i], '"', '\\"', "g")
		call add(s:commands, join(['"', s:newmsg, '"'], ""))
	endfor
	call system(join(s:commands, " "))
	return v:shell_error
endfunction
