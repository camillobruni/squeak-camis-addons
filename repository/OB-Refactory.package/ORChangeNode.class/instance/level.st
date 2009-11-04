accessing
level
	^ self parent isNil
		ifTrue: [ -1 ]
		ifFalse: [ self parent level + 1 ]