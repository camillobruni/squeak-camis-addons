ajax
sendUpdate
	self createMessage
		selector: #update;
		arguments: [Array with: self state];
		queue