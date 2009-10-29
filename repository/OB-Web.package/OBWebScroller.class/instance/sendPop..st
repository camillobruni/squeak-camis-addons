as yet unclassified
sendPop: count
	self createMessage
		selector: #pop;
		arguments: {count};
		queue