updating
subscribe
	self announcer 
		observe: O2SelectionChanged
		send: #selectionChanged:
		to: self