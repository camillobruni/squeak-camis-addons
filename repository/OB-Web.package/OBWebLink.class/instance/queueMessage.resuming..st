messaging
queueMessage: anAjaxMessage resuming: aRequest
	| value |
	self queueMessage: anAjaxMessage.
	value _ computation escape: [:cc | continuation _ cc].
	aRequest resume: value