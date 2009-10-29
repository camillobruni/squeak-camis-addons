accessing
panes
	^ panes ifNil: [self updatePanes. panes]