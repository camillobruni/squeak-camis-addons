execution
execute
	| list choice |
	list := target container organization listAtCategoryNamed: target name.
	list isEmpty ifTrue: [ ^ target remove ].
	choice := O2ConfirmationRequest 
		prompt: 'Are you sure you want to
remove this ' , self categoryOrProtocol , ' 
and all its elements?'
		confirm: 'Remove'.
	(choice notNil and: [ choice ]) ifTrue: [ ^ target remove ]