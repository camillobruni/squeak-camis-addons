accessing
refactoring
	^ self classAndVariable: [ :class :variable | 
		PullUpClassVariableRefactoring 
			variable: variable
			class: class superclass ]