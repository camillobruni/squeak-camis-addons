*ocompletion
isCaretBehindChar
	| pos |
	pos := self caret - 1.
	^ pos < 1
		ifTrue: [false]
		ifFalse: [(self text at: pos) isAlphaNumeric]