interaction
handleConfirmationRequest: request
	|choice|
	choice := UIManager default
		chooseFrom: {request okChoice. request cancelChoice}
		values: {true. false}
		title: request prompt.
	^ choice
		ifNil: [false]
		ifNotNil: [choice]