accessing
refactoring
	^ self classAndVariable: [ :class :variable |
		PushDownInstanceVariableRefactoring 
			variable: variable
			class: class ]