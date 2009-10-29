updating
addButton: aButton
	self hasButton ifTrue: [self removeMorph: button].
	button := aButton.
	button height: self defaultButtonHeight.
	self 
		addMorph: button;
		adjustList;
		adjustButton