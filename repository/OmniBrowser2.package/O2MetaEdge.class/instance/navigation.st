accessing
navigation
	^ navigation ifNil: [ navigation := O2DefaultEdgeNavigation new ]