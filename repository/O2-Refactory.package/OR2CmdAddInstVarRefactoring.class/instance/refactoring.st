accessing
refactoring
	^ AddInstanceVariableRefactoring
		variable: (self
			request: 'Enter the new variable name:'
			initialAnswer: (self selection ifNil: [ 'var' ]))
		class: self currentNode theClass