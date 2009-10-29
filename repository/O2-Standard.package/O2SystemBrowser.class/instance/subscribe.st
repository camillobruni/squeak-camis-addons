navigating
subscribe
	super subscribe.
	self announcer
		observe: O2ShowSenders
			send: #showSenders:
			to: self;
		observe: O2ShowImplementors
			send: #showImplementors:
			to: self