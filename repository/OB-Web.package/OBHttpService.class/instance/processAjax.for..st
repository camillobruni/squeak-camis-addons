request processing
processAjax: aString for: target
	| message content |
	message := OBAjaxMessage fromString: aString.
	content _ Json render: (target processMessage: message).
	^ self responseWithContent: content type: 'application/json; charset=utf-8'