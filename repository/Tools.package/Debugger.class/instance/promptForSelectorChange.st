accessing
promptForSelectorChange
		| ans  |
	ans := O2ChoiceRequest 
		prompt: 'Selector has been modified. Do you want to save a new method?'
		labels: { 'Save'. 'Cancel'  }
		values: (Array 
				with: [ ^ true ]
				with: [ ^ false]).
	ans value