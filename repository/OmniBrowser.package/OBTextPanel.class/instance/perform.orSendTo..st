callbacks
perform: aSelector orSendTo: anObject 
	| receiver |
	receiver := (self respondsTo: aSelector) 
		ifTrue: [ self ]
		ifFalse: [ anObject ].
	receiver perform: aSelector