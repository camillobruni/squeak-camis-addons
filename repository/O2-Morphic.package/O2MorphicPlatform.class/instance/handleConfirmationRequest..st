interaction
handleConfirmationRequest: request
	^ UIManager default
		chooseFrom: {request okChoice. request cancelChoice}
		values: {true. false}
		title: request prompt.