initializing
setPanel: aPanel 
	panel := aPanel.
	switch := O2Switch inColumn: self.
	self subscribe.
	self listHolder clearAll