overriding
at: anInteger put: anObject
	self checkSelector: #at:put:.
	^ object at: anInteger put: anObject.