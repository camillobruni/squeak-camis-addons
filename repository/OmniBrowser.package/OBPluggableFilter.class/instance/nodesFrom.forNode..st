filtering
nodesFrom: aCollection forNode: aNode 
	^ nodes isNil 
		ifTrue: 
			[ super 
				nodesFrom: aCollection
				forNode: aNode ]
		ifFalse: 
			[ nodes 
				value: aCollection
				value: aNode ]