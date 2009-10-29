accessing
fan
	^ fan ifNil: 
		[ fan := (Smalltalk hasClassNamed: #O2EnhancementFan) 
			ifTrue: [ (Smalltalk at: #O2EnhancementFan) new ]
			ifFalse: [ O2Fan new ] ]