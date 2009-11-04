execution
execute
	| refactoring |
	refactoring := [ self refactoring ] 
		on: ORUICancellationError
		do: [ :err | ^ self ].
	refactoring ifNil: [ ^ self ].
	refactoring model environment: self environment.
	[ self handleError: [ self performRefactoring: refactoring ] ] 
		on: ORUICancellationError
		do: [ :err | ^ self ]