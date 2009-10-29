as yet unclassified
sendPush: aPane priority: anInteger
	self createMessage
		selector: #push;
		arguments: {aPane asJson};
		priority: anInteger;
		queue