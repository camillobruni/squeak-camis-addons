navigating
addChild: aNode 
	(collection includes: aNode) ifFalse: [ collection := collection copyWith: aNode ]