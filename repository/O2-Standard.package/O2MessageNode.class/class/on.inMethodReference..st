instance creation
on: aSelector inMethodReference: ref
     (ref respondsTo: #enhancedOn:inMethodReference:) ifTrue: [^self enhancedOn: aSelector inMethodReference: ref].
	^ self 
		on: aSelector 
		inMethod: ref methodSymbol
		inClass: ref actualClass