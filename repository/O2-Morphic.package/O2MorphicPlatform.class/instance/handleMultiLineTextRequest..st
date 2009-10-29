interaction
handleMultiLineTextRequest: request
	^UIManager default
				multiLineRequest: request prompt
				centerAt: Sensor cursorPoint
				initialAnswer: request template
				answerHeight: 200