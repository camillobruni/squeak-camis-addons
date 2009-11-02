unaccepted edits
promptForCancel
	| ans  |
	model canDiscardEdits ifTrue: [^ true].
	ans := O2ChoiceRequest 
		prompt: 'Code has been modified. Do you want to accept or discard the changes?'
		labels: { 'Accept'. 'Discard'. 'Cancel'  }
		values: (Array 
				with: [ self accept ]
				with: [ model changed: #clearUserEdits ]
				with: [ self cancel ]).
	ans value. 