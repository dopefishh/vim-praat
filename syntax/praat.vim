" Vim syntax file
" Language: Praat
" Maintainer: Mart
" Version: 0.9
" Latest Revision: 2018-09-22

if exists("b:current_syntax")
	finish
endif

" Statements
syn keyword praatConditional if elif elsif else endif fi then
syn keyword praatRepeat for from to endfor
syn keyword praatRepeat repeat until
syn keyword praatRepeat while endwhile
syn keyword praatKeyword procedure endproc
syn keyword praatPreCondit include
syn keyword praatKeyword editor endeditor
syn keyword praatKeyword form endform
syn keyword praatKeyWord beginPause endPause
syn keyword praatKeyWord pause system system_nocheck
syn keyword praatKeyWord select plus minus
syn keyword praatOperator not and or

" Objects
syn keyword praatObject ArtWord BarkFilter CC Cepstrum Cochleagram
syn keyword praatObject DurationTier Excitation Formant FormantTier
syn keyword praatObject FormantFilter Harmonicity Intensity 
syn keyword praatObject IntensityTier LFCC LPC LongSound Ltas MFCC
syn keyword praatObject Manipulation Matrix MelFilter ParamCurve
syn keyword praatObject Pitch PitchTier PointProcess Polygon Sequence
syn keyword praatObject Sequence Sound Speaker Spectrogram Spectrum
syn keyword praatObject SpellingChecker Strings TableOfReal TextGrid
syn keyword praatObject TextTier Wavelet WordList Table

" Numbers and operators and strings
syn match praatNumber '[-+]\?\d\+'
syn match praatFloat '[-+]\?\d\*\.\d\*'
syn match praatOperator '\(<>\|[<>!=]=\|[<>+\-*%/]\)'
syn match praatString '"\(\\.\?"\|[^"]\)*"'

" Identifiers
" syn match praatIdentifier '[a-z\-A-Z_]\+[$#]\?'

" Functions
syn match praatFunction '[a-z\-A-Z_]\+[$#]\?\s*(\@='
syn match praatFunction '[a-z\-A-Z_ ]\+: \@='
syn match praatFunction '[A-Z][ &a-z\-A-Z_]\+\(\.\.\.\|$\)'

" Comments
syn match praatComment '#.*$'

" Link it
hi def link praatConditional Conditional
hi def link praatRepeat Repeat
hi def link praatKeyword Keyword
hi def link praatPreCondit PreCondit
hi def link praatComment Comment
hi def link praatNumber Number
hi def link praatFloat Float
hi def link praatOperator Operator
hi def link praatString String
hi def link praatFunction Function
hi def link praatObject Type
hi def link praatIdentifier Identifier
