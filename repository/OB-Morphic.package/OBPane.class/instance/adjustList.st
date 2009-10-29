updating
adjustList
	self hasButton
		ifFalse: [self list bounds: self innerBounds]
		ifTrue: [self list bounds: (self innerBounds withHeight: (self height - self buttonHeight))]