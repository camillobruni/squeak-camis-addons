updating
subscribe
	self announcer
		observe: O2AboutToChange
			send: #aboutToChange:
			to: self;
		observe: O2AboutToChangeSilently
			send: #aboutToChangeSilently:
			to: self;
		observe: O2SelectionChanged
			send: #selectionChanged:
			to: self;
		observe: O2NodeChanged
			send: #nodeChanged:
			to: self;
		observe: O2RefreshRequired
			send: #refresh:
			to: self;
		observe: O2DefinitionChanged
			send: #definitionChanged:
			to: self