interaction
handleTextRequest: request
	| text |
	text := UIManager default
				request:request prompt
				initialAnswer: request template.
	^ (text isNil or: [text isEmpty])
		ifTrue: [nil]
		ifFalse: [text]