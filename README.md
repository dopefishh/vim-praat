praat.vim
=========
praat.vim is currently only a syntax highlighting file for Paul Boersma's praat
scripts http://praat.org. However in the future it might also include other
functions like:

- Running the script you are editing in praat via sendpraat
- Autocomplete
- ...

##Installation
###Pathogen

	cd ~/.vim/bundle
	git clone git://github.com/dopefishh/vim-praat.git

###Manual

	git clone git://github.com/dopefishh/vim-praat.git
	mkdir -p ~/.vim/{syntax,ftdetect}
	cp ./syntax/praat.vim ~/.vim/syntax/
	cp ./ftdetect/praat.vim ~/.vim/ftdetect/

##Features
- Syntax highlighting for praat scripts

## Licence
```"THE BEER-WARE LICENSE" (Revision 42):
<mart@martlubbers.net> wrote this file. As long as you retain this notice you
can do whatever you want with this stuff. If we meet some day, and you think
this stuff is worth it, you can buy me a beer in return.```
