debugging-haltOnce
removeHaltCount
	(Smalltalk includesKey: #HaltCount) ifTrue: [
		Smalltalk removeKey: #HaltCount]