updating
adjustButton
	| inner |
	self hasButton ifFalse: [ ^ self ].
	inner := self innerBounds.
	button bounds: (inner withTop: inner bottom - button height)