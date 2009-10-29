accessing
label
	^ requestor browser theClass = ProtoObject 
		ifTrue: ['limit']
		ifFalse: ['limit: ' , self limitClass name]