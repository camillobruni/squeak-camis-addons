accessing
refactoring
	^ AddClassVariableRefactoring 
		variable: (self
			request: 'Enter the new variable name:'
			initialAnswer: (self selection ifNil: [ 'Var' ]))
		class: self currentNode theNonMetaClass