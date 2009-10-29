execution
execute
	| ans |
	ans := O2ConfirmationRequest 
		prompt: 'Are you certain that you 
want to REMOVE the class ' , target theNonMetaClassName , ' from the system?'
		confirm: 'Remove'.
	ans ifNil: [ ^ self ].
	ans ifFalse: [ ^ self ].
	target remove.
	requestor announce: (O2NodeDeleted node: target)