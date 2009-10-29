updating
nodeDeleted: ann 
	ann node = self root ifTrue: 
		[ current := nil.
		self columns first clear.
		self announcer announce: (O2SelectionChanged column: self) ]