interaction
handleChoiceRequest: request
	^ UIManager default
		chooseFrom: request labels
		values: request values
		lines: request lines
		title: (request prompt ifNil: [''])