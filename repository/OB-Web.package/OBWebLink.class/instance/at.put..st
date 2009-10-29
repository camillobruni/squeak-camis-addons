accessing
at: identifier put: anObject
	objects ifNil:
		[objects _ Dictionary new.
		root _ anObject].
	objects at: identifier put: anObject