accessing
labelWithKeystroke
	^ self keystroke isNil 
		ifTrue: [ self label ]
		ifFalse: [ self label , ' (' , self keystroke asString , ')' ]