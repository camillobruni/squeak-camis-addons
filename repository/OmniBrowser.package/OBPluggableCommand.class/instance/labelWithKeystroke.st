morphic
labelWithKeystroke
	^ keystroke isNil 
		ifTrue: [ label ]
		ifFalse: [ label , ' (' , keystroke asString , ')' ]