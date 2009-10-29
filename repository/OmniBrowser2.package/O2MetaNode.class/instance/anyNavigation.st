navigation
anyNavigation
	^ self hasDefaultNavigationEdge 
		ifTrue: [ O2DefaultEdgeNavigation new ]
		ifFalse: [ (self edges at: 1) navigation ]