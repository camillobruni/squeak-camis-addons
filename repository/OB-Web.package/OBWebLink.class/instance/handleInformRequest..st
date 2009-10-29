notifications
handleInformRequest: aRequest
	| message |
	message _ self createMessage.
	message
		selector: 'inform';
		arguments: (Array with: aRequest message).
	self queueMessage: message resuming: aRequest.