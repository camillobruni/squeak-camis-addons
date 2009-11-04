accessing
refactoring
	| initializer newSelector initialAnswer |
	initialAnswer := self currentNode selector numArgs = 0 
		ifTrue: [ self currentNode selector , ':' ]
		ifFalse: [ self currentNode selector ].
	newSelector := self 
		request: 'Enter new selector:'
		initialAnswer: initialAnswer.
	newSelector isEmpty ifTrue: [ ^ nil ].
	initializer := self 
		request: 'Enter default value for parameter:'
		initialAnswer: 'nil'.
	initializer isEmpty ifTrue: [ ^ nil ].
	^ AddParameterRefactoring 
		addParameterToMethod: self currentNode selector
		in: self currentNode theClass
		newSelector: newSelector asSymbol
		initializer: initializer