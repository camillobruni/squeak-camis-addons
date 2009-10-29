updating
subscribe
	super subscribe.
	self announcer 
		observe: O2SelectionChanged
		send: #columnSelected:
		to: O2RecentClasses default