messaging
queueMessage: anAjaxMessage
	(queue noneSatisfy: [:ea | anAjaxMessage isDuplicateOf: ea])
		ifTrue: [queue add: anAjaxMessage]