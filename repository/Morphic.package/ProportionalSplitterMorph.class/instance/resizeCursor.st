as yet unclassified
resizeCursor

	^ Cursor resizeForEdge: (splitsTopAndBottom
		ifTrue: [#top]
		ifFalse: [#left])
		