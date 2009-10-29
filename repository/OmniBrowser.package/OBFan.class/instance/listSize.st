accessing
listSize
	^ self children isNil 
		ifTrue: [ 0 ]
		ifFalse: [ self children size ]