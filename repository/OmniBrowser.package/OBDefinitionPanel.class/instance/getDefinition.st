accessing
getDefinition
	| node |
	^ (node := browser currentNode) isNil
		ifFalse: [ node definition ]