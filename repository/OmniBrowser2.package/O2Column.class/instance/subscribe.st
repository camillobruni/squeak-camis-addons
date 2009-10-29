updating
subscribe
	self announcer
		observe: O2RefreshRequired
			send: #refresh:
			to: self;
		observe: O2NodeChanged
			send: #nodeChanged:
			to: self;
		observe: O2NodeDeleted
			send: #nodeDeleted:
			to: self;
		observe: O2ChildrenChanged
			send: #childrenChanged:
			to: self;
		observe: O2SelectionChanged
			send: #selectionChanged:
			to: self