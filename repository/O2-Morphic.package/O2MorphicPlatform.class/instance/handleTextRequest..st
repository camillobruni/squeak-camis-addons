interaction
handleTextRequest: request
	| text |
	text := UIManager default
				request:request prompt
				initialAnswer: request template.
	^ text isEmptyOrNil
		ifTrue: [nil]
		ifFalse: [text]