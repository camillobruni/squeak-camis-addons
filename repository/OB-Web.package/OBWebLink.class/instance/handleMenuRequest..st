notifications
handleMenuRequest: aRequest
	| selection |
	self queueMessage: (aRequest messageWithReceiver: root identifier).
	selection _ self escape.
	self handleInteractionDuring: [aRequest select: selection]