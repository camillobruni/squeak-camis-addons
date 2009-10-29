notifications
handleChoiceRequest: aRequest
	| message |
	message _ self createMessage.
	message
		selector: 'requestChoice';
		arguments: (Array with: aRequest prompt with: aRequest labels).
	self queueMessage: message.
	aRequest select: self escape.