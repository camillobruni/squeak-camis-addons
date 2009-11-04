accessing
refactoring
	^ self classAndVariable: [ :class :variable | 
		RemoveClassVariableRefactoring 
			variable: variable
			class: class ]