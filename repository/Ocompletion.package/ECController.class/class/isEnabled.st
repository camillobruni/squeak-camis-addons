testing
isEnabled
	self initialized 
		ifFalse: [self initialize].
	^ ECPreferences enabled