accessing
label
	^ self currentNode theClass isMeta 
		ifTrue: [ 'move to instance side' ]
		ifFalse: [ 'move to class side' ]