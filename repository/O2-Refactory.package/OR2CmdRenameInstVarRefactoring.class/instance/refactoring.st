accessing
refactoring
	| name |
	^ self classAndVariable: [ :class :variable |
		name := self 
			request: 'Enter the new variable name:'
			initialAnswer: variable.
		RenameInstanceVariableRefactoring 
			rename: variable
			to: name
			in: class ]