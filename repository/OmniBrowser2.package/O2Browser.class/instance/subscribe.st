updating
subscribe
	self announcer
		observe: O2SelectionChanged
			send: #relabel:
			to: self;
		observe: O2NodeCommandScan
			send: #scanNodeCommands:
			to: self;
		observe: O2TextCommandScan
			send: #scanTextCommands:
			to: self