updating
aboutToChange: ann 
	| ans vetoBlock answerResult |
	self canDiscardEdits ifTrue: [ ^ true ].
	vetoBlock := [ ann veto ].
	ans := O2ChoiceRequest 
		prompt: 'Code has been modified. Do you want to accept or discard the changes?'
		labels: {  'Accept'. 'Discard'. 'Cancel'  }
		values: (Array 
				with: [ self changed: #accept ]
				with: [ self changed: #clearUserEdits ]
				with: vetoBlock).
	answerResult := ans value.
	answerResult isNil ifTrue: vetoBlock