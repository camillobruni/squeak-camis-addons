updating
removeButton
	self hasButton 
		ifTrue: [self removeMorph: button.
				button := nil.
				self adjustList]