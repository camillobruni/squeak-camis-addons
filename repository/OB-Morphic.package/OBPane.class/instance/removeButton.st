updating
removeButton
	self hasButton ifFalse: [ ^ self ].
	self removeMorph: button.
	button := nil.
	self adjustList