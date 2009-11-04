execution
execute
	| refactoring |
	refactoring := [ self refactoring ] 
		on: OR2UICancellationError
		do: [ :err | ^ self ].
	refactoring ifNil: [ ^ self ].
	refactoring model environment: self environment.
	[ self handleError: [ self performRefactoring: refactoring ] ] 
		on: OR2UICancellationError
		do: [ :err | ^ self ]