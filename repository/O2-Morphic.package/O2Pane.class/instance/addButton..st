updating
addButton: aButton
	self hasButton ifTrue: [self removeMorph: button].
	button := aButton.
	button height: (aButton minExtent y max: self defaultButtonHeight).
	
	self 
		addMorph: button;
		adjustList;
		adjustButton