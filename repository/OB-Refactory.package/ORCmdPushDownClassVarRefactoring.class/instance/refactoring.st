accessing
refactoring
	^ self classAndVariable: [ :class :variable | 
		PushDownClassVariableRefactoring 
			variable: variable
			class: class ]