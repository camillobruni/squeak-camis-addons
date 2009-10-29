defaults
separatorWidth
	^ OBPlatform current builder style39 
		ifTrue: [ 3 ]
		ifFalse: [ 4 ]