confirmation
confirmRedefinition: definition
	| newName prompt answer |
	newName := self nameOfClassDefinedBy: definition.
	prompt := (newName, ' is an existing class in this system.
Redefining it might cause serious problems.
Is this really what you want to do?') asText.
	answer := OBConfirmationRequest
		prompt: prompt
		confirm: 'Redefine'.
	^ answer ifNil: [false]