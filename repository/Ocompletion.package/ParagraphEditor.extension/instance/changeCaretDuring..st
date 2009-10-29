*ocompletion
changeCaretDuring: aBlock
	| caret |
	caret := self startBlock stringIndex.
	[aBlock value] ensure:[self selectAt: caret]