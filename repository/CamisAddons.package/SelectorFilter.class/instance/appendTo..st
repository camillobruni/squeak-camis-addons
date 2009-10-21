overriding
appendTo: anObject
	self checkSelector: #appendTo:.
	^ object appendTo: anObject.