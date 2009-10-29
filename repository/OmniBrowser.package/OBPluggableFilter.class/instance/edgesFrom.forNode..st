filtering
edgesFrom: aCollection forNode: aNode 
	^ edges isNil 
		ifTrue: 
			[ super 
				edgesFrom: aCollection
				forNode: aNode ]
		ifFalse: 
			[ edges 
				value: aCollection
				value: aNode ]