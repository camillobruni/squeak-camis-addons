updating
nodeDeleted: ann 
	ann node = self root ifFalse: [ ^ self ].
	current := nil.
	self columns first clear.
	self announcer announce: (OBSelectionChanged column: self)