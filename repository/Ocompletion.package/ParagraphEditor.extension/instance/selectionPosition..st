*ocompletion
selectionPosition: aString 
	| caret position bottomLeft topLeft |
	caret := self startBlock stringIndex.
	[self selectAt: caret - aString size.
	bottomLeft := paragraph selectionRects first bottomLeft.
	topLeft := self morph owner submorphBounds topLeft.
	position := topLeft + bottomLeft]
		ensure: [self selectAt: caret].
	^ position