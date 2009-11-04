accessing
refactoring
	^ self classAndVariable: [ :class :variable | 
		AbstractClassVariableRefactoring 
			variable: variable
			class: class ]