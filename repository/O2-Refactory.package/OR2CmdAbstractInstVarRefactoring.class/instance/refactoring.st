accessing
refactoring
	^ self classAndVariable: [ :class :variable |
		AbstractInstanceVariableRefactoring 
			variable: variable
			class: class ]