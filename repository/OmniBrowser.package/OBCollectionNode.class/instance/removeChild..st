navigating
removeChild: aNode 
	(collection includes: aNode) ifTrue: [ collection := collection copyWithout: aNode ]