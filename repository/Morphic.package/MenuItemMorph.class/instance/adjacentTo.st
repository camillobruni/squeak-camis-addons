selecting
adjacentTo
	self isInDockingBar
		ifFalse: [^ {self bounds topRight + (10 @ 0). self bounds topLeft}].
	""
	owner isFloating
		ifTrue: [^ {self bounds bottomLeft + (5 @ 5)}].
	owner isAdheringToTop
		ifTrue: [^ {self bounds bottomLeft + (5 @ 5)}].
	owner isAdheringToLeft
		ifTrue: [^ {self bounds topRight + (5 @ 5)}].
	""
	owner isAdheringToBottom
		ifTrue: [^ {self bounds topLeft + (5 @ 5)}].
	owner isAdheringToRight
		ifTrue: [^ {self bounds topLeft + (5 @ -5)}].
	""
	^ {self bounds bottomLeft + (3 @ 5)}