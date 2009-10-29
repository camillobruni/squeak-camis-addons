instance creation
on: aSelector inMethodReference: ref
	^ self 
		on: aSelector 
		inMethod: ref methodSymbol
		inClass: ref actualClass