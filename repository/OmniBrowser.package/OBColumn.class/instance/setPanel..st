initializing
setPanel: aPanel 
	panel := aPanel.
	switch := OBSwitch inColumn: self.
	self subscribe.
	self listHolder clearAll