accessing
refactoring
	^ self classAndVariable: [ :class :variable |
		PullUpInstanceVariableRefactoring 
			variable: variable
			class: class superclass ]