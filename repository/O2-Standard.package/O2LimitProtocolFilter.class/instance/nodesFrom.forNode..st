filtering
nodesFrom: nodes forNode: aNode 
	| allClasses limit |
	nodes ifEmpty: [ ^ nodes ].
	limit := self limitClassFor: aNode.
	allClasses := aNode theClass withAllSuperclasses copyUpTo: limit.
	allClasses add: limit.
	^ (nodes first isKindOf: O2MethodCategoryNode) 
		ifTrue: 
			[ self 
				filterProtocols: nodes
				onClasses: allClasses
				forNode: aNode ]
		ifFalse: 
			[ self 
				filterMethods: nodes
				onClasses: allClasses
				forNode: aNode ]