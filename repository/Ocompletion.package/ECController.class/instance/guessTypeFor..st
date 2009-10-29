type guessing
guessTypeFor: aString 
	model
		ifNil: [
			^ nil]
		ifNotNil: [^ model guessTypeForName: aString]