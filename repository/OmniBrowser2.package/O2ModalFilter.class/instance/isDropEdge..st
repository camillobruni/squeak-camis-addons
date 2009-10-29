callbacks
isDropEdge: aString
	| edge |
	edge := 	metaNode defaultEdges detect: [:e | e label = aString] ifNone: [nil].
	edge ifNotNil: [^edge isDropEdge].
	^false