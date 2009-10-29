notifications
handleTextRequest: aRequest
	
	| message |
	message _ self createMessage.
	message
		selector: 'requestText';
		arguments: (Array with: aRequest prompt with: aRequest template).
	self queueMessage: message resuming: aRequest.