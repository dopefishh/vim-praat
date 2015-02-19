" Prevent duplicate loading
if exists("g:sendpraat_version")
	finish
endif
let g:sendpraat_version="0.1"
if ! exists("g:sendpraat_path")
	let g:sendpraat_path = "sendpraat"
endif

function! Sendpraat(...)
	let sp_timeout = 0
	let sp_program = "praat"
	if a:0 >= 1 && type(a:1) == type([])
		let sp_message = a:1
		if a:0 >= 2 && type(a:2) == type(0)
			let sp_timeout = a:2
			if a:0 == 3 && type(a:3) == type("")
				let sp_program = a:3
			else
				echoe "Program should be a string"
				return
			endif
		else
			echoe "Timeout should be an integer"
			return
		endif
	else
		echoe "Message should be a list"
		return
	endif
	let commands = [g:sendpraat_path, sp_timeout, sp_program]
	for i in range(0, len(sp_message)-1)
		let newmsg = substitute(sp_message[i], '"', '\"', "")
		call add(commands, join(['"', newmsg, '"'], ""))
	endfor
	call system(join(commands, " "))
	if v:shell_error != 0
		echoe join(["Unsuccessfull with error code:", v:shell_error], " ")
	else
		echom "Succesfull"
	endif
endfunction
