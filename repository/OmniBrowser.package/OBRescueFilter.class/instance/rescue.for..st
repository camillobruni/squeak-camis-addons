private
rescue: aCollection for: aNode 
	| previous |
	previous := rescued 
		at: aNode
		ifAbsent: 
			[ #() ].
	^ rescued 
		at: aNode
		put: previous , aCollection