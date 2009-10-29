as yet unclassified
guessVariable: aString in: aClass expected: theClassExpected 
	| typeGuesser result |
	typeGuesser := ECClassVarTypeGuesser 
		variableName: aString
		class: aClass.
	result := typeGuesser perform.
	self assert: result == theClassExpected