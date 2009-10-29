updating
adjustButton
	| inner |
	self hasButton ifTrue: 
		[inner := self innerBounds.
		button bounds: (inner withTop: inner bottom - button height)]