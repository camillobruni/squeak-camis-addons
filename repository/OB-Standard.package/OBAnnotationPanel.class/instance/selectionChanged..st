updating
selectionChanged: ann 
	text := ann node isNil 
		ifTrue: [ String new ]
		ifFalse: [ ann node annotationString ].
	self changed: #text