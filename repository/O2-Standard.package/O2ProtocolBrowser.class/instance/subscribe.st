updating
subscribe
	super subscribe.
	self announcer
		observe: O2RefreshRequired
			send: #refresh:
			to: self;
		observe: O2NodeChanged
			send: #limitClass:
			to: self