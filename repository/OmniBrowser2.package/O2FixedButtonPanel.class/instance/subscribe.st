callbacks
subscribe
	self announcer unsubscribe: self.
	self announcer 
		observe: O2SelectionChanged
		send: #selectionChanged:
		to: self.
	self announcer 
		observe: O2NodeChanged
		send: #selectionChanged:
		to: self