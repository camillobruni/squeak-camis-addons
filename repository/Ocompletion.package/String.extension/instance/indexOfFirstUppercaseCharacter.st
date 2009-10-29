*ocompletion
indexOfFirstUppercaseCharacter
	| position found input |
	position := 0.
	found := false.
	input := ReadStream on: self.
	[ input atEnd | found ] whileFalse: 
		[ input next isUppercase ifTrue: [ found := true ].
		position := position + 1 ].
	found 
		ifTrue: [ ^ position ]
		ifFalse: [ ^ 0 ]